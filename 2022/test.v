module all_sort(input CLK,
                input RST,
                output [2:0]work,
                output [2:0]job);
    
    localparam NUMBER_OF_WORK = 8;
    localparam COST_BIT = 7;
    localparam INDEX_BIT =3;

    wire grt [0:NUMBER_OF_WORK-2];
    wire [2:0]switch_number_index;
    wire [COST_BIT-1:0]  switch_value;

    wire [2:0]switch_point;
    wire [3*8-1:0] order_list;

    reg [2:0] list [0:NUMBER_OF_WORK-1];
    reg [2:0] list_right_normalized [0:NUMBER_OF_WORK-1];
    reg [2:0] list_find_small_0 [0:NUMBER_OF_WORK-1];
    reg [2:0] list_find_small_1 [0:NUMBER_OF_WORK-1];
    reg [2:0] list_switch [0:NUMBER_OF_WORK-1];
    reg [2:0] list_out [0:NUMBER_OF_WORK-1];

    //list order
    integer j;
    assign switch_value = list[(switch_number_index-1)];
    always@(posedge CLK)begin
        if(RST)begin
            for(j=0;j<NUMBER_OF_WORK;j=j+1)begin
                list[j] <= j;
            end

        end
        else begin
            for(j=0;j<NUMBER_OF_WORK;j=j+1)
                list[j] <=list_out[j];
        end
    end
   //list_right_normalized
   always@(posedge CLK)begin
    if(RST)begin
        for(j=0;j<NUMBER_OF_WORK;j=j+1)begin
            list_right_normalized[j] <= j;
        end

    end
    else begin
        for(j=0;j<NUMBER_OF_WORK;j=j+1)
            list_right_normalized[j] <=(j > (switch_number_index-1)) ? list[j]-switch_value:7;
    end
   end
   
   always@(posedge CLK)begin                //list_find_small_0
    if(RST)begin
        for(j=0;j<NUMBER_OF_WORK;j=j+1)begin
            list_right_normalized[j] <= j;
        end

    end
    else begin
        for(j=0;j<NUMBER_OF_WORK;j=j+1)
            list_right_normalized[j] <=(j > (switch_number_index-1)) ? list[j]-switch_value:7;
    end
   end
   // Switch two number
    reg [2:0] reversed_point;
    always@(posedge CLK)begin
        if(RST)
            reversed_point<=7;
        else
            reversed_point<=switch_number_index-1;
        end
   generate
    genvar k;
for(k=0;k<8;k=k+1)begin :SWITCH_TWO_NUMBER
    always@(posedge CLK)begin
        if(RST)begin
            // list_switch[k]<=k;
            list_switch[0]<=0;
            list_switch[1]<=1;
            list_switch[2]<=2;
            list_switch[3]<=3;
            list_switch[4]<=4;
            list_switch[5]<=5;
            list_switch[6]<=7;
            list_switch[7]<=6;
        end
        else begin //can be replace by LUT?
            if(switch_point ==k)
                list_switch[k] <= list[switch_number_index-1];
            else if(switch_number_index-1 ==k)
                list_switch[k] <= list[switch_point];
            else
                list_switch[k] <= list[k];
        end
    end
end
endgenerate

    // Find switch point
    genvar t;
    generate
    for(t=0;t<NUMBER_OF_WORK-1;t=t+1)begin :Greater_Than_Right
        assign grt[t] = list[t] < list[t+1];
    end
    endgenerate
    assign switch_number_index = 
                            grt[6] ? 4'd7   :
                            grt[5] ? 4'd6   :
                            grt[4] ? 4'd5   :
                            grt[3] ? 4'd4   :
                            grt[2] ? 4'd3   :
                            grt[1] ? 4'd2   :
                            grt[0] ? 4'd1   :   4'd0;


    


//Revers the order in list
// assign reversed_point = switch_number_index-1;
// integer r;
always@(posedge CLK)begin
    if(RST)begin
        // for(r=0;r<NUMBER_OF_WORK;r=r+1)begin
        //     list_out[r] <= r;
        // end
        list_out[0] <= 0;
        list_out[1] <= 1;
        list_out[2] <= 2;
        list_out[3] <= 3;
        list_out[4] <= 4;
        list_out[5] <= 5;
        list_out[6] <= 7;
        list_out[7] <= 6;
    end
    else begin
    case (reversed_point)
        3'd0:begin
            list_out[0] <= list_switch[7];
            list_out[1] <= list_switch[6];
            list_out[2] <= list_switch[5];
            list_out[3] <= list_switch[4];
            list_out[4] <= list_switch[3];
            list_out[5] <= list_switch[2];
            list_out[6] <= list_switch[1];
            list_out[7] <= list_switch[0];
        end 
        3'd1:begin
            list_out[0] <= list_switch[0];
            list_out[1] <= list_switch[1];
            list_out[2] <= list_switch[7];
            list_out[3] <= list_switch[6];
            list_out[4] <= list_switch[5];
            list_out[5] <= list_switch[4];
            list_out[6] <= list_switch[3];
            list_out[7] <= list_switch[2];
        end 
        3'd2:begin
            list_out[0] <= list_switch[0];
            list_out[1] <= list_switch[1];
            list_out[2] <= list_switch[2];
            list_out[3] <= list_switch[7];
            list_out[4] <= list_switch[6];
            list_out[5] <= list_switch[5];
            list_out[6] <= list_switch[4];
            list_out[7] <= list_switch[3];
        end 
        3'd3:begin
            list_out[0] <= list_switch[0];
            list_out[1] <= list_switch[1];
            list_out[2] <= list_switch[2];
            list_out[3] <= list_switch[3];
            list_out[4] <= list_switch[7];
            list_out[5] <= list_switch[6];
            list_out[6] <= list_switch[5];
            list_out[7] <= list_switch[4];
        end 
        3'd4:begin
            list_out[0] <= list_switch[0];
            list_out[1] <= list_switch[1];
            list_out[2] <= list_switch[2];
            list_out[3] <= list_switch[3];
            list_out[4] <= list_switch[4];
            list_out[5] <= list_switch[7];
            list_out[6] <= list_switch[6];
            list_out[7] <= list_switch[5];
        end 
        3'd5:begin
            list_out[0] <= list_switch[0];
            list_out[1] <= list_switch[1];
            list_out[2] <= list_switch[2];
            list_out[3] <= list_switch[3];
            list_out[4] <= list_switch[4];
            list_out[5] <= list_switch[5];
            list_out[6] <= list_switch[7];
            list_out[7] <= list_switch[6];
        end 
        // 3'd6:begin
        //     list_out[0] <= list_switch[0];
        //     list_out[1] <= list_switch[1];
        //     list_out[2] <= list_switch[2];
        //     list_out[3] <= list_switch[3];
        //     list_out[4] <= list_switch[4];
        //     list_out[5] <= list_switch[5];
        //     list_out[6] <= list_switch[7];
        //     list_out[7] <= list_switch[6];
        // end 
        // 3'd7:begin
        //     list_out[0] <= list_switch[0];
        //     list_out[1] <= list_switch[1];
        //     list_out[2] <= list_switch[2];
        //     list_out[3] <= list_switch[3];
        //     list_out[4] <= list_switch[4];
        //     list_out[5] <= list_switch[5];
        //     list_out[6] <= list_switch[6];
        //     list_out[7] <= list_switch[7];
        // end 
        default: begin
            list_out[0] <= list_switch[0];
            list_out[1] <= list_switch[1];
            list_out[2] <= list_switch[2];
            list_out[3] <= list_switch[3];
            list_out[4] <= list_switch[4];
            list_out[5] <= list_switch[5];
            list_out[6] <= list_switch[6];
            list_out[7] <= list_switch[7];
        end
        
    endcase
    end
end
assign order_list = {list_out[7],list_out[6],list_out[5],list_out[4],list_out[3],list_out[2],list_out[1],list_out[0]};
reg enable;
reg [1:0] enable_cnt;
always@(posedge CLK)begin
    if(RST)begin
        enable <= 1; 
        enable_cnt<=0;
    end
    else begin
        if(enable_cnt==2'd2)begin
            enable<=1;  
            enable_cnt<=0;
        end
        else begin
            enable<=0;
            enable_cnt <= enable_cnt+1'b1;
        end
    end
end
order_output 
order_output_dut (
  .CLK (CLK ),
  .RST (RST ),
  .list (order_list ),
  .enable (enable ),
  .job (job ),
  .work  ( work)
);


`ifdef DEBUG_LIST
integer idx;
always@(posedge CLK)begin
    if(RST)
        idx=0;
    else begin
        $display("%d output list:\t %d,%d,%d,%d,%d,%d,%d,",idx,list_out[0],list_out[1],list_out[2],list_out[3],list_out[4],list_out[5],list_out[6],list_out[7]);
        idx=idx+1;
    end
end
`endif
endmodule
