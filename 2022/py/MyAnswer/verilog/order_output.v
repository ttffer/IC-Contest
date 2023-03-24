module order_output (
    input CLK,
    input RST,
    input [3*8-1:0] list,
    input enable,
    output reg [2:0] job,
    output reg [2:0] work,
    output reg last
);
    reg [2:0] worker_counter;
    reg [2:0] sequential_list[0:7];
    reg RST_delay;
    always @(posedge CLK) RST_delay <= RST;
    integer i;
    //shift reg
    always @(posedge CLK) begin
        if (RST_delay) begin
            for (i = 0; i < 8; i = i + 1) sequential_list[i] <= i;
        end else if (enable) begin
            for (i = 0; i < 8; i = i + 1) sequential_list[i] <= list[i*3+:3];
        end else begin
            sequential_list[7] <= 3'd0;
            for (i = 0; i < 7; i = i + 1) sequential_list[i] <= sequential_list[i+1];
        end
    end
    //output job, work
    always @(posedge CLK) begin
        if (RST_delay) begin
            job  <= 0;
            work <= 0;
        end else begin
            job  <= sequential_list[0];
            work <= worker_counter;
        end
    end
    //counter
    always @(posedge CLK) begin
        if (RST_delay) begin
            worker_counter <= 0;
        end else begin
            if (enable) worker_counter <= 0;
            else worker_counter <= worker_counter + 1;
            // worker_counter <= worker_counter + 1;
        end
    end
    //check list
    wire last_one;
    assign last_one = (  (sequential_list[0]==7)&(sequential_list[1]==6)
                        &(sequential_list[2]==5)&(sequential_list[3]==4)
                        &(sequential_list[4]==3)&(sequential_list[5]==2)
                        &(sequential_list[6]==1)&(sequential_list[7]==0)
        &(worker_counter ==0) 
        ) ? 1'b1 : 1'b0;
    reg [2:0] last_one_propagte[0:7];
    always @(posedge CLK) begin  // propagate last signal
        if (RST_delay) begin
            for (i = 0; i < 8; i = i + 1) last_one_propagte[i] <= 0;
            last <= 0;
        end else begin
            last_one_propagte[0] <= last_one;
            last <= last_one_propagte[7];
            for (i = 0; i < 7; i = i + 1) begin
                last_one_propagte[i+1] <= last_one_propagte[i];
            end
        end
    end
endmodule
