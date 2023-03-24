module all_sort (
    input CLK,
    input RST,
    output [2:0] work,
    output [2:0] job,
    output all_sort_last
);

    localparam NUMBER_OF_WORK = 8;
    localparam COST_BIT = 7;
    localparam INDEX_BIT = 3;
    localparam COM_0 = 4;
    localparam COM_1 = 2;
    localparam ENABLE_CNT_NUM = 7;
    // localparam COM_1 = 1;
    wire grt[0:NUMBER_OF_WORK-2];
    wire [2:0] switch_number_index;
    wire [COST_BIT-1:0] switch_value;

    wire [2:0] switch_point;
    reg [3*8-1:0] order_list;

    reg [2:0] list[0:NUMBER_OF_WORK-1];

    reg [2:0] list_0[0:NUMBER_OF_WORK-1];
    reg [2:0] list_1[0:NUMBER_OF_WORK-1];
    reg [2:0] list_2[0:NUMBER_OF_WORK-1];
    reg [2:0] list_3[0:NUMBER_OF_WORK-1];

    reg [2:0] switch_number_index_propagate[0:4];

    reg enable;
    reg [3:0] enable_cnt;

    reg [COST_BIT-1:0] list_switch_value[0:NUMBER_OF_WORK-1];
    reg [INDEX_BIT+COST_BIT-1:0] list_find_small_0[0:COM_0-1];
    reg [INDEX_BIT+COST_BIT-1:0] list_find_small_1[0:COM_1-1];
    reg [INDEX_BIT+COST_BIT-1:0] list_find_small_2;
    reg [2:0] list_switch[0:NUMBER_OF_WORK-1];
    reg [2:0] list_out[0:NUMBER_OF_WORK-1];
    reg [2:0] list_out_delay_0[0:NUMBER_OF_WORK-1];
    // reg [2:0] list_out_delay_1[0:NUMBER_OF_WORK-1];
    //list order
    integer j;
    assign switch_value = list[(switch_number_index-1)];
    always @(posedge CLK) begin
        if (RST) begin
            // list[0] <= 0;
            // list[1] <= 1;
            // list[2] <= 2;
            // list[3] <= 3;
            // list[4] <= 4;
            // list[5] <= 5;
            // list[6] <= 7;
            // list[7] <= 6;
            for (j = 0; j < NUMBER_OF_WORK; j = j + 1) begin
                list[j]   <= 7 - j;
                list_0[j] <= 7 - j;
                list_1[j] <= 7 - j;
                list_2[j] <= 7 - j;
                list_3[j] <= 7 - j;
            end
        end else begin
            // for (j = 0; j < NUMBER_OF_WORK; j = j + 1) list[j] <= list_out[j];
            for (j = 0; j < NUMBER_OF_WORK; j = j + 1) begin
                list_0[j] <= list[j];
                list_1[j] <= list_0[j];
                list_2[j] <= list_1[j];
                list_3[j] <= list_2[j];
                // list[j]   <= list_out[j];
                if (enable) list[j] <= list_out_delay_0[j];
                else list[j] <= j;  // Set Inital value


            end

        end
    end
    //list_switch_value
    always @(posedge CLK) begin
        if (RST) begin
            for (j = 0; j < NUMBER_OF_WORK; j = j + 1) list_switch_value[j] <= j;
        end else begin
            for (j = 0; j < NUMBER_OF_WORK; j = j + 1)
            list_switch_value[j] <= (j > (switch_number_index - 1)) ? list[j] - switch_value : 7; // all value could be 7 when 7 in 7th
        end
    end
    // Find switch point
    genvar t;
    generate
        for (t = 0; t < NUMBER_OF_WORK - 1; t = t + 1)
        begin : Greater_Than_Right
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
    //list_find_small_0
    always @(posedge CLK) begin
        if (RST) begin
            for (j = 0; j < COM_0; j = j + 1) list_find_small_0[j] <= 0;
        end else begin
            list_find_small_0[0] <= (list_switch_value[0] < list_switch_value[1]) ?  {{3'd0},{list_switch_value[0]}} : {{3'd1},{list_switch_value[1]}} ;
            list_find_small_0[1] <= (list_switch_value[2] < list_switch_value[3]) ?  {{3'd2},{list_switch_value[2]}} : {{3'd3},{list_switch_value[3]}} ;
            list_find_small_0[2] <= (list_switch_value[4] < list_switch_value[5]) ?  {{3'd4},{list_switch_value[4]}} : {{3'd5},{list_switch_value[5]}} ;
            list_find_small_0[3] <= (list_switch_value[6] < list_switch_value[7]) ?  {{3'd6},{list_switch_value[6]}} : {{3'd7},{list_switch_value[7]}} ;

        end
    end
    //list_find_small_1
    always @(posedge CLK) begin
        if (RST) begin
            for (j = 0; j < COM_1; j = j + 1) list_find_small_1[j] <= 0;
        end else begin
            list_find_small_1[0] <= list_find_small_0[0][COST_BIT-1:0] < list_find_small_0[1][COST_BIT-1:0] ? list_find_small_0[0]:list_find_small_0[1];
            list_find_small_1[1] <= list_find_small_0[2][COST_BIT-1:0] < list_find_small_0[3][COST_BIT-1:0] ? list_find_small_0[2]:list_find_small_0[3];
        end
    end
    //list_find_small_2
    always @(posedge CLK) begin
        if (RST) list_find_small_2 <= 0;
        else
            list_find_small_2 <=  list_find_small_1[0][COST_BIT-1:0]<list_find_small_1[1][COST_BIT-1:0] ? list_find_small_1[0]:list_find_small_1[1];
    end
    assign switch_point = list_find_small_2[INDEX_BIT+COST_BIT-1:INDEX_BIT+COST_BIT-3];

    //propagate the switch index
    always @(posedge CLK) begin
        if (RST) begin
            for (j = 0; j < 5; j = j + 1) switch_number_index_propagate[j] <= 7;
        end else begin
            switch_number_index_propagate[0] <= switch_number_index - 1;
            switch_number_index_propagate[1] <= switch_number_index_propagate[0];
            switch_number_index_propagate[2] <= switch_number_index_propagate[1];
            switch_number_index_propagate[3] <= switch_number_index_propagate[2];
            switch_number_index_propagate[4] <= switch_number_index_propagate[3];
        end
    end


    // Switch two number

    wire [2:0] reversed_point_switch;
    wire [2:0] reversed_point_reversed;
    assign reversed_point_switch = switch_number_index_propagate[3];
    // check last one
    assign reversed_point_reversed = (switch_number_index_propagate[3] == 7 ) ? 3'd6:switch_number_index_propagate[4];
    generate
        genvar k;
        for (k = 0; k < 8; k = k + 1) begin : SWITCH_TWO_NUMBER
            always @(posedge CLK) begin
                if (RST) begin
                    list_switch[k] <= k;
                    // list_switch[0] <= 0;
                    // list_switch[1] <= 1;
                    // list_switch[2] <= 2;
                    // list_switch[3] <= 3;
                    // list_switch[4] <= 4;
                    // list_switch[5] <= 5;
                    // list_switch[6] <= 7;
                    // list_switch[7] <= 6;
                end else begin  //can be replace by LUT?
                    if (reversed_point_switch == 7) begin  // last one check
                        list_switch[k] <= list_3[k];
                    end else begin
                        //list_3[switch_point] is the smallest num on the right hand side
                        if (switch_point == k) list_switch[k] <= list_3[reversed_point_switch];
                        else if (reversed_point_switch == k) list_switch[k] <= list_3[switch_point];
                        else list_switch[k] <= list_3[k];
                    end
                end
            end
        end
    endgenerate


    //Revers the order in list
    always @(posedge CLK) begin
        if (RST) begin
            for (j = 0; j < NUMBER_OF_WORK; j = j + 1) begin
                list_out[j] <= j;
            end
            // list_out[0] <= 0;
            // list_out[1] <= 1;
            // list_out[2] <= 2;
            // list_out[3] <= 3;
            // list_out[4] <= 4;
            // list_out[5] <= 5;
            // list_out[6] <= 7;
            // list_out[7] <= 6;
        end else begin
            case (reversed_point_reversed)
                3'd0: begin
                    list_out[0] <= list_switch[0];
                    list_out[1] <= list_switch[7];
                    list_out[2] <= list_switch[6];
                    list_out[3] <= list_switch[5];
                    list_out[4] <= list_switch[4];
                    list_out[5] <= list_switch[3];
                    list_out[6] <= list_switch[2];
                    list_out[7] <= list_switch[1];
                end
                3'd1: begin
                    list_out[0] <= list_switch[0];
                    list_out[1] <= list_switch[1];
                    list_out[2] <= list_switch[7];
                    list_out[3] <= list_switch[6];
                    list_out[4] <= list_switch[5];
                    list_out[5] <= list_switch[4];
                    list_out[6] <= list_switch[3];
                    list_out[7] <= list_switch[2];
                end
                3'd2: begin
                    list_out[0] <= list_switch[0];
                    list_out[1] <= list_switch[1];
                    list_out[2] <= list_switch[2];
                    list_out[3] <= list_switch[7];
                    list_out[4] <= list_switch[6];
                    list_out[5] <= list_switch[5];
                    list_out[6] <= list_switch[4];
                    list_out[7] <= list_switch[3];
                end
                3'd3: begin
                    list_out[0] <= list_switch[0];
                    list_out[1] <= list_switch[1];
                    list_out[2] <= list_switch[2];
                    list_out[3] <= list_switch[3];
                    list_out[4] <= list_switch[7];
                    list_out[5] <= list_switch[6];
                    list_out[6] <= list_switch[5];
                    list_out[7] <= list_switch[4];
                end
                3'd4: begin
                    list_out[0] <= list_switch[0];
                    list_out[1] <= list_switch[1];
                    list_out[2] <= list_switch[2];
                    list_out[3] <= list_switch[3];
                    list_out[4] <= list_switch[4];
                    list_out[5] <= list_switch[7];
                    list_out[6] <= list_switch[6];
                    list_out[7] <= list_switch[5];
                end
                3'd5: begin
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
    //Delay 2 cycle

    always @(posedge CLK) begin
        if (RST) begin
            for (j = 0; j < NUMBER_OF_WORK; j = j + 1) begin
                list_out_delay_0[j] <= 0;
                // list_out_delay_1[j] <= 7 - j;
            end
        end else begin
            for (j = 0; j < NUMBER_OF_WORK; j = j + 1) begin
                list_out_delay_0[j] <= list_out[j];
                // list_out_delay_1[j] <= list_out_delay_0[j];
            end

        end
    end
    always @(posedge CLK) begin
        if (RST) begin
            enable_cnt <= 0;
        end else begin
            // if (enable_cnt == NUMBER_OF_WORK - 1) begin
            if (enable_cnt == ENABLE_CNT_NUM) begin
                enable_cnt <= 0;
            end else begin
                enable_cnt <= enable_cnt + 1'b1;
            end
        end
    end
    always @(posedge CLK) begin
        if (RST) begin
            enable <= 0;
        end else begin
            // if (enable_cnt == NUMBER_OF_WORK - 1) begin
            if (enable_cnt == ENABLE_CNT_NUM) begin
                enable <= 1;
            end else begin
                enable <= 0;
            end
        end
    end
    wire all_sort_enable;
    assign all_sort_enable = enable;
    always @(*) begin
        if (enable)
            order_list <= {
                list_out_delay_0[7],
                list_out_delay_0[6],
                list_out_delay_0[5],
                list_out_delay_0[4],
                list_out_delay_0[3],
                list_out_delay_0[2],
                list_out_delay_0[1],
                list_out_delay_0[0]
            };
        else order_list <= 24'b0;
    end
    wire ORDER_OUTPUT_last;
    order_output order_output_dut (
        .CLK(CLK),
        .RST(RST),
        .list(order_list),
        .enable(enable),
        .job(job),
        .work(work),
        .last(ORDER_OUTPUT_last)
    );
    assign all_sort_last = ORDER_OUTPUT_last;

`ifdef DEBUG_LIST
    reg [3:0] ans_read[0:403198*8];
    integer show_num = 0;
    initial begin

        $readmemh("ans.txt", ans_read);
    end
    always @(posedge (work == 7)) begin
        if ((show_num % 1000) == 0) $display("i: %d", show_num);
        // $display(" ans:\t %d,%d,%d,%d,%d,%d,%d,", ans_read[0+show_num*8], ans_read[1+show_num*8],
        //          ans_read[2+show_num*8], ans_read[3+show_num*8], ans_read[4+show_num*8],
        //          ans_read[5+show_num*8], ans_read[6+show_num*8], ans_read[7+show_num*8]);

        if( (ans_read[0+show_num*8] ==list[0]) &
            (ans_read[1+show_num*8] ==list[1]) &
            (ans_read[2+show_num*8] ==list[2]) &
            (ans_read[3+show_num*8] ==list[3]) &
            (ans_read[4+show_num*8] ==list[4]) &
            (ans_read[5+show_num*8] ==list[5]) &
            (ans_read[6+show_num*8] ==list[6]) &
            (ans_read[7+show_num*8] ==list[7]) )begin
            //do nothin

        end else begin
            $display("%d", show_num);
            $display(" ans:\t %d,%d,%d,%d,%d,%d,%d,", ans_read[0+show_num*8],
                     ans_read[1+show_num*8], ans_read[2+show_num*8], ans_read[3+show_num*8],
                     ans_read[4+show_num*8], ans_read[5+show_num*8], ans_read[6+show_num*8],
                     ans_read[7+show_num*8]);
            $display(" output :\t %d,%d,%d,%d,%d,%d,%d,", list[0], list[1], list[2], list[3],
                     list[4], list[5], list[6], list[7]);
            $finish;
        end
        if( (list[0]==7) &(list[1]==6) &(list[2]==5) &(list[3]==4) &(list[4]==3) &(list[5]==2) &(list[6]==1) &(list[7]==0) )
            $display("last one");
        // $display(" output :\t %d,%d,%d,%d,%d,%d,%d,", list[0], list[1], list[2], list[3],
        //          list[4], list[5], list[6], list[7]);
        show_num = show_num + 1;
    end

`endif
endmodule
