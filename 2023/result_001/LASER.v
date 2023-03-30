module LASER (
    input CLK,
    input RST,
    input [3:0] X,
    input [3:0] Y,
    output reg [3:0] C1X,
    output reg [3:0] C1Y,
    output reg [3:0] C2X,
    output reg [3:0] C2Y,
    output reg DONE
);

    parameter READ = 'b0000_0001;
    parameter C0_LOOP = 'b0000_0010;
    parameter C1_LOOP = 'b0000_0100;
    parameter C0C1_LOOP = 'b0000_1000;
    parameter C1C0_LOOP = 'b0001_0000;
    parameter CHECK = 'b0010_0000;

    reg [5:0] read_cnt;

    reg [7:0] CurrState;
    reg [7:0] NextState;

    reg [3:0] x_pos[0:39];
    reg [3:0] y_pos[0:39];

    reg [3:0] C0_x;
    reg [3:0] C0_y;
    reg [3:0] C1_x;
    reg [3:0] C1_y;

    wire C0_LOOP_DONE;
    wire C1_LOOP_DONE;


    integer i;
    //find max coverage 
    wire [5:0] C0_points;
    wire [5:0] C1_points;
    wire [5:0] Re_points;

    reg [5:0] Coverage;

    wire [39:0] IN0;
    wire [39:0] IN1;
    wire [39:0] IN_R;

    reg [5:0] max_Coverage;
    reg [3:0] C0_max_x_pos;
    reg [3:0] C0_max_y_pos;

    reg [3:0] C1_max_x_pos;
    reg [3:0] C1_max_y_pos;
    wire [9:0] C0_x_diff[0:39];
    wire [9:0] C0_y_diff[0:39];
    wire [9:0] C0_dis[0:39];

    wire [9:0] C1_x_diff[0:39];
    wire [9:0] C1_y_diff[0:39];
    wire [9:0] C1_dis[0:39];

    reg [3:0] C0_last_x;
    reg [3:0] C0_last_y;
    reg [3:0] C1_last_x;
    reg [3:0] C1_last_y;


    reg [3:0] last_x, last_y;
    // State logic
    always @(posedge CLK) begin
        if (RST) CurrState <= RST;
        else CurrState <= NextState;
    end

    wire C0C1_DONE;
    wire C1C0_DONE;
    assign C0C1_DONE = (C0_last_x == C0_max_x_pos) && (C0_max_y_pos == C0_last_y) &&(C0_x==15)&&(C0_y==15);
    assign C1C0_DONE = (C1_last_x == C1_max_x_pos) && (C1_max_y_pos == C1_last_y) &&(C1_x==15)&&(C1_y==15);
    //Next state 
    always @(*) begin
        case (CurrState)
            READ: begin
                // $display("READ");
                if (read_cnt == 40) NextState <= C0_LOOP;
                else NextState <= READ;
            end
            C0_LOOP: begin
                if (C0_LOOP_DONE) NextState <= C1_LOOP;
                else NextState <= C0_LOOP;
            end
            C1_LOOP: begin
                if (C1_LOOP_DONE) NextState <= C0C1_LOOP;
                else NextState <= C1_LOOP;
            end
            C0C1_LOOP: begin
                if (C0C1_DONE) begin
                    NextState <= CHECK;
                end else begin
                    if (C0_LOOP_DONE) NextState <= C1C0_LOOP;
                    else NextState <= C0C1_LOOP;
                end
            end
            C1C0_LOOP: begin
                if (C1C0_DONE) begin
                    NextState <= CHECK;
                end else begin
                    if (C1_LOOP_DONE) NextState <= C0C1_LOOP;
                    else NextState <= C1C0_LOOP;
                end
            end
            CHECK: begin
                NextState <= READ;
            end
            default: NextState <= READ;
        endcase
    end

    //read cnt
    always @(posedge CLK) begin
        if (RST | DONE) begin
            read_cnt <= 0;
        end else begin
            if (CurrState == CHECK) read_cnt <= 0;
            else begin
                if (read_cnt < 40) read_cnt <= read_cnt + 1;
            end
        end
    end
    assign C0_LOOP_DONE = (C0_x == 15) && (C0_y == 15);
    assign C1_LOOP_DONE = (C1_x == 15) && (C1_y == 15);

    always @(posedge CLK) begin
        case (CurrState)
            READ: begin

                DONE <= 0;
                C0_x <= 0;
                C0_y <= 0;
                C1_x <= 0;
                C1_y <= 0;

                C1X  <= 0;
                C1Y  <= 0;
                C2X  <= 0;
                C2Y  <= 0;

                // Coverage <= 0;
                // max_Coverage <= 0;

                // C0_max_x_pos <= 0;
                // C0_max_y_pos <= 0;
                // C1_max_x_pos <= 0;
                // C1_max_y_pos <= 0;

                // last_x <= 0;
                // last_y <= 0;

                // C0_last_x <= 0;
                // C0_last_y <= 0;
                // C1_last_x <= 0;
                // C1_last_y <= 0;
            end

            C0_LOOP: begin
                if (C0_x == 15) begin
                    C0_x <= 0;
                end else begin
                    C0_x <= C0_x + 1;
                end
                if ((C0_y == 15) && (C0_x == 15)) begin
                    C0_y <= 0;
                end else begin
                    if (C0_x == 15) C0_y <= C0_y + 1;
                end
            end
            C1_LOOP: begin
                C0_x <= C0_max_x_pos;
                C0_y <= C0_max_y_pos;
                if (C1_x == 15) begin
                    C1_x <= 0;
                end else begin
                    C1_x <= C1_x + 1;
                end
                if ((C1_y == 15) && (C1_x == 15)) begin
                    C1_y <= 0;
                end else begin
                    if (C1_x == 15) C1_y <= C1_y + 1;
                end
            end
            C0C1_LOOP: begin
                C1_x <= C1_max_x_pos;
                C1_y <= C1_max_y_pos;
                if (C1_x == 0) begin
                    C0_x <= 0;
                    C0_y <= 0;
                end else begin
                    if (C0_x == 15) begin
                        C0_x <= 0;
                    end else begin
                        C0_x <= C0_x + 1;
                    end
                    if ((C0_y == 15) && (C0_x == 15)) begin
                        C0_y <= 0;
                    end else begin
                        if (C0_x == 15) C0_y <= C0_y + 1;
                    end
                end
            end
            C1C0_LOOP: begin
                C0_x <= C0_max_x_pos;
                C0_y <= C0_max_y_pos;
                if (C0_x == 0) begin
                    C1_x <= 0;
                    C1_y <= 0;
                end else begin

                    if (C1_x == 15) begin
                        C1_x <= 0;
                    end else begin
                        C1_x <= C1_x + 1;
                    end

                    if ((C1_y == 15) && (C1_x == 15)) begin
                        C1_y <= 0;
                    end else begin
                        if (C1_x == 15) C1_y <= C1_y + 1;
                    end
                end
            end
            CHECK: begin
                DONE <= 1;
                C1X  <= C0_max_x_pos;
                C1Y  <= C0_max_y_pos;
                C2X  <= C1_max_x_pos;
                C2Y  <= C1_max_y_pos;
                // read_cnt <= 0;
                // $display("CHECK");
            end
            default: begin
                DONE <= 0;
                C0_x <= 0;
                C0_y <= 0;
                C1_x <= 0;
                C1_y <= 0;

                C1X  <= 0;
                C1Y  <= 0;
                C2X  <= 0;
                C2Y  <= 0;
            end
        endcase
    end

    always @(posedge CLK) begin
        case (CurrState)
            READ: begin
                x_pos[read_cnt] <= X;
                y_pos[read_cnt] <= Y;
            end
            default: ;
        endcase
    end


    genvar idx;
    generate
        for (idx = 0; idx < 40; idx = idx + 1) begin : distance
            assign C0_x_diff[idx]= (x_pos[idx]>C0_x) ? (x_pos[idx]-C0_x)*(x_pos[idx]-C0_x) :(C0_x-x_pos[idx])*(C0_x-x_pos[idx]);
            assign C0_y_diff[idx]= (y_pos[idx]>C0_y) ? (y_pos[idx]-C0_y)*(y_pos[idx]-C0_y) :(C0_y-y_pos[idx])*(C0_y-y_pos[idx]);
            assign C0_dis[idx] = C0_x_diff[idx] + C0_y_diff[idx];

            assign C1_x_diff[idx]= (x_pos[idx]>C1_x) ? (x_pos[idx]-C1_x)*(x_pos[idx]-C1_x) :(C1_x-x_pos[idx])*(C1_x-x_pos[idx]);
            assign C1_y_diff[idx]= (y_pos[idx]>C1_y) ? (y_pos[idx]-C1_y)*(y_pos[idx]-C1_y) :(C1_y-y_pos[idx])*(C1_y-y_pos[idx]);
            assign C1_dis[idx] = C1_x_diff[idx] + C1_y_diff[idx];
            assign IN0[idx] = (C0_dis[idx] <= 16);
            assign IN1[idx] = (C1_dis[idx] <= 16);

            assign IN_R[idx] = IN0[idx] && IN1[idx];
        end
    endgenerate
    assign Re_points =IN_R[0]+IN_R[1]+IN_R[2]+IN_R[3]+IN_R[4]+IN_R[5]+IN_R[6]+IN_R[7]+IN_R[8]+IN_R[9]+IN_R[10]+IN_R[11]+IN_R[12]+IN_R[13]+IN_R[14]+IN_R[15]+IN_R[16]+IN_R[17]+IN_R[18]+IN_R[19]+IN_R[20]+IN_R[21]+IN_R[22]+IN_R[23]+IN_R[24]+IN_R[25]+IN_R[26]+IN_R[27]+IN_R[28]+IN_R[29]+IN_R[30]+IN_R[31]+IN_R[32]+IN_R[33]+IN_R[34]+IN_R[35]+IN_R[36]+IN_R[37]+IN_R[38]+IN_R[39];
    assign C0_points =IN0[0]+IN0[1]+IN0[2]+IN0[3]+IN0[4]+IN0[5]+IN0[6]+IN0[7]+IN0[8]+IN0[9]+IN0[10]+IN0[11]+IN0[12]+IN0[13]+IN0[14]+IN0[15]+IN0[16]+IN0[17]+IN0[18]+IN0[19]+IN0[20]+IN0[21]+IN0[22]+IN0[23]+IN0[24]+IN0[25]+IN0[26]+IN0[27]+IN0[28]+IN0[29]+IN0[30]+IN0[31]+IN0[32]+IN0[33]+IN0[34]+IN0[35]+IN0[36]+IN0[37]+IN0[38]+IN0[39];
    assign C1_points =IN1[0]+IN1[1]+IN1[2]+IN1[3]+IN1[4]+IN1[5]+IN1[6]+IN1[7]+IN1[8]+IN1[9]+IN1[10]+IN1[11]+IN1[12]+IN1[13]+IN1[14]+IN1[15]+IN1[16]+IN1[17]+IN1[18]+IN1[19]+IN1[20]+IN1[21]+IN1[22]+IN1[23]+IN1[24]+IN1[25]+IN1[26]+IN1[27]+IN1[28]+IN1[29]+IN1[30]+IN1[31]+IN1[32]+IN1[33]+IN1[34]+IN1[35]+IN1[36]+IN1[37]+IN1[38]+IN1[39];


    always @(posedge CLK) begin
        if (RST || DONE) begin
            Coverage <= 0;

            Coverage <= 0;
            max_Coverage <= 0;

            C0_max_x_pos <= 0;
            C0_max_y_pos <= 0;
            C1_max_x_pos <= 0;
            C1_max_y_pos <= 0;

            last_x <= 0;
            last_y <= 0;

            C0_last_x <= 0;
            C0_last_y <= 0;
            C1_last_x <= 0;
            C1_last_y <= 0;

        end else begin
            case (CurrState)
                C0_LOOP, C0C1_LOOP: begin
                    last_x <= C0_x;
                    last_y <= C0_y;

                end
                C1_LOOP, C1C0_LOOP: begin
                    last_x <= C1_x;
                    last_y <= C1_y;
                end
            endcase

            Coverage <= C1_points + C0_points - Re_points;
            if (Coverage > max_Coverage) begin
                max_Coverage <= Coverage;
                case (CurrState)
                    C0_LOOP, C0C1_LOOP: begin
                        C0_max_x_pos <= last_x;
                        C0_max_y_pos <= last_y;
                        C0_last_x <= last_x;
                        C0_last_y <= last_y;
                    end
                    C1_LOOP, C1C0_LOOP: begin
                        C1_max_x_pos <= last_x;
                        C1_max_y_pos <= last_y;
                        C1_last_x <= last_x;
                        C1_last_y <= last_y;
                    end
                endcase
            end
        end
    end


endmodule


