module huffman (


    input clk,
    input reset,
    input gray_valid,
    input [7:0] gray_data,
    output reg CNT_valid,
    output reg [7:0] CNT1,
    CNT2,
    CNT3,
    CNT4,
    CNT5,
    CNT6,
    output code_valid,
    output [7:0] HC1,
    HC2,
    HC3,
    HC4,
    HC5,
    HC6,
    output [7:0] M1,
    M2,
    M3,
    M4,
    M5,
    M6
);
    parameter DataWidth = 8;

    parameter A1 = 8'd1;
    parameter A2 = 8'd2;
    parameter A3 = 8'd3;
    parameter A4 = 8'd4;
    parameter A5 = 8'd5;
    parameter A6 = 8'd6;


    parameter NumofState = 16;


    localparam CLEAR = 'b0000_0000_0001;
    localparam READ = 'b0000_0000_0010;
    localparam INIT = 'b0000_0000_0100;
    localparam OUTCNT = 'b0000_0000_1000;

    localparam COMBINATION_0 = 'b0000_0001_0000;
    localparam COMSMALL_0 = 'b0000_0010_0000;
    localparam COMBINATION_1 = 'b0000_0100_0000;
    localparam COMSMALL_1 = 'b0000_1000_0000;

    localparam COMBINATION_2 = 'b0001_0000_0000;
    localparam COMSMALL_2 = 'b0010_0000_0000;
    localparam COMBINATION_3 = 'b0100_0000_0000;
    localparam COMSMALL_3 = 'b1000_0000_0000;
    localparam SPLIT0 = 'b0001_0000_0000_0000;
    localparam SPLIT1 = 'b0010_0000_0000_0000;
    localparam SPLIT2 = 'b0100_0000_0000_0000;
    localparam SPLIT3 = 'b1000_0000_0000_0000;

    reg [NumofState-1:0] CurrState;
    reg [NumofState-1:0] NextState;

    reg [6:0] posibility[0:5];

    reg [4+7-1:0] Init_com[0:5];  //{4'b Index}{7'b probability}
    reg [6:0] Read_counter;

    reg [6:0] C1_posibility[0:4];
    reg [6:0] C2_posibility[0:3];
    reg [6:0] C3_posibility[0:2];
    reg [6:0] C4_posibility[0:1];
    reg [8-1:0] C1_index[0:4];
    reg [12-1:0] C2_index[0:3];
    reg [16-1:0] C3_index[0:2];
    reg [20-1:0] C4_index[0:1];
    reg C1_group[0:4];
    reg C2_group[0:3];
    reg C3_group[0:2];
    reg C4_group[0:1];
    // reg C1_min[0:4];
    // reg C2_min[0:3];
    // reg C3_min[0:2];
    // reg C4_min[0:1];

    integer i;
    wire init_done;
    wire comsmall_0_done, comsmall_1_done, comsmall_2_done;
    //Counter
    always @(posedge clk) begin
        case (CurrState)
            CLEAR: Read_counter <= 0;
            READ: begin
                if (gray_valid) Read_counter <= Read_counter + 1;
            end
        endcase
    end

    //State logic
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            CurrState <= CLEAR;
        end else CurrState <= NextState;
    end
    //Next State 
    always @(*) begin
        case (CurrState)
            CLEAR: begin
                NextState = READ;
            end
            READ: begin
                if (Read_counter < 100) NextState = READ;
                else NextState = OUTCNT;
            end
            OUTCNT: begin
                NextState = INIT;
            end
            INIT: begin
                if (init_done) NextState = COMBINATION_0;
                else NextState = INIT;
            end
            COMBINATION_0: begin
                NextState = COMSMALL_0;
            end
            COMSMALL_0: begin
                if (comsmall_0_done) NextState = COMBINATION_1;
                else NextState = COMSMALL_0;
            end
            COMBINATION_1: begin
                NextState = COMSMALL_1;
            end
            COMSMALL_1: begin
                NextState = COMBINATION_2;
                // if (comsmall_1_done) NextState = COMBINATION_2;
                // else NextState = COMSMALL_1;
            end
            COMBINATION_2: begin
                NextState = COMSMALL_2;
            end
            COMSMALL_2: begin
                NextState = COMBINATION_3;
                // if (comsmall_2_done) NextState = COMBINATION_3;
                // else NextState = COMSMALL_2;
            end
            COMBINATION_3: begin
                NextState = COMSMALL_3;
            end
            COMSMALL_3: begin
                NextState = SPLIT0;
            end

            SPLIT0: begin
                NextState = CLEAR;
            end
            default: NextState = CLEAR;
        endcase
    end

    //Output logic
    // always @(*) begin
    //     case (CurrState)
    //         CLEAR:   NextState <= CLEAR;
    //         default: NextState <= CLEAR;
    //     endcase
    // end

    //Degub logic
    // always @(posedge clk) begin
    //     case (CurrState)
    //         CLEAR: $display("CLEAR");
    //         READ: $display("READ");
    //         COMBINATION_0: $display("COMBINATION_0");
    //         default: $display("Default");
    //     endcase
    // end


    //State register logic
    always @(posedge clk or posedge reset) begin
        case (CurrState)
            CLEAR: begin
                for (i = 0; i < 6; i = i + 1) begin
                    posibility[i] <= 0;
                    Init_com[i]   <= 0;
                end
            end
            READ: begin  //Read input data
                case (gray_data)
                    A1: posibility[0] <= posibility[0] + 1;
                    A2: posibility[1] <= posibility[1] + 1;
                    A3: posibility[2] <= posibility[2] + 1;
                    A4: posibility[3] <= posibility[3] + 1;
                    A5: posibility[4] <= posibility[4] + 1;
                    A6: posibility[5] <= posibility[5] + 1;
                    // default: begin
                    //     for (i = 0; i < 6; i = i + 1) begin
                    //         posibility[i] <= 0;
                    //     end
                    // end

                endcase
            end
            OUTCNT: begin
                CNT1 <= posibility[0];
                CNT2 <= posibility[1];
                CNT3 <= posibility[2];
                CNT4 <= posibility[3];
                CNT5 <= posibility[4];
                CNT6 <= posibility[5];
                CNT_valid <= 1;
                Init_com[0] <= {{4'h1}, {posibility[0]}};  //{4' index}{7' value}
                Init_com[1] <= {{4'h2}, {posibility[1]}};
                Init_com[2] <= {{4'h3}, {posibility[2]}};
                Init_com[3] <= {{4'h4}, {posibility[3]}};
                Init_com[4] <= {{4'h5}, {posibility[4]}};
                Init_com[5] <= {{4'h6}, {posibility[5]}};
            end
            INIT: begin
                CNT_valid <= 0;
            end

            default: begin
                CNT1 <= 0;
                CNT2 <= 0;
                CNT3 <= 0;
                CNT4 <= 0;
                CNT5 <= 0;
                CNT6 <= 0;
                CNT_valid <= 0;

            end
        endcase
    end

    //Init : re-order the list
    reg [2:0] switch_index;
    always @(posedge clk or posedge reset) begin
        case (CurrState)
            CLEAR: switch_index <= 0;
            INIT: begin
                if (switch_index == 4) begin
                    switch_index <= 0;
                end else begin
                    switch_index <= switch_index + 1;
                end
                // $display("Compare com0 %d Com1 %d", Init_com[switch_index][6:0],
                //          Init_com[switch_index+1][6:0]);
                if (Init_com[switch_index][6:0] < Init_com[switch_index+1][6:0]) begin
                    // $display(" switch com0 %d Com1 %d", Init_com[switch_index][6:0],
                    //          Init_com[switch_index+1][6:0]);
                    Init_com[switch_index]   <= Init_com[switch_index+1];  //switch
                    Init_com[switch_index+1] <= Init_com[switch_index];
                end else begin
                    if (Init_com[switch_index][6:0] == Init_com[switch_index+1][6:0]) begin //if values are same
                        if(Init_com[switch_index][10:7] > Init_com[switch_index+1][10:7]) // if 0th > 1th, switch
                        begin
                            Init_com[switch_index]   <= Init_com[switch_index+1];  //switch
                            Init_com[switch_index+1] <= Init_com[switch_index];
                        end
                    end else begin
                        // $display("Do not switch");
                    end
                end
            end
        endcase
    end
    wire init_value_done,init_index_done,index_check0,index_check1,index_check2,index_check3,index_check4,index_check5;
    assign init_value_done = (Init_com[0][6:0]>=Init_com[1][6:0]) &&
                            (Init_com[1][6:0]>=Init_com[2][6:0]) &&
                            (Init_com[2][6:0]>=Init_com[3][6:0]) &&
                            (Init_com[3][6:0]>=Init_com[4][6:0]) &&
                            (Init_com[4][6:0]>=Init_com[5][6:0]);

    assign index_check0 = ~(Init_com[0][6:0] == Init_com[1][6:0]) ? 0 :  // if not equal 
        (Init_com[0][10:7] < Init_com[1][10:7]) ? 0 : 1;  // 1 means order is wrong
    assign index_check1 =    ~(Init_com[1][6:0]   ==  Init_com[2][6:0])  ? 0: 
                            (Init_com[1][10:7]  <   Init_com[2][10:7])  ? 0:1;
    assign index_check2 =    ~(Init_com[2][6:0]   ==  Init_com[3][6:0])  ? 0: 
                            (Init_com[2][10:7]  <   Init_com[3][10:7])  ? 0:1;
    assign index_check3 =    ~(Init_com[3][6:0]   ==  Init_com[4][6:0])  ? 0: 
                            (Init_com[3][10:7]  <   Init_com[4][10:7])  ? 0:1;
    assign index_check4 =    ~(Init_com[4][6:0]   ==  Init_com[5][6:0])  ? 0: 
                            (Init_com[4][10:7]  <   Init_com[5][10:7])  ? 0:1;

    assign init_index_done= ~(index_check0 || index_check1 ||index_check2 ||
                            index_check3||index_check4 );

    assign init_done = init_index_done && init_value_done;  //index order, value order



    always @(posedge clk or posedge reset) begin
        case (CurrState)
            COMBINATION_0: begin
                for (i = 0; i < 4; i = i + 1) begin
                    C1_posibility[i] <= Init_com[i][6:0];
                    C1_index[i]      <= {Init_com[i][10:7], 4'h0};  // {4' index}{4'h 0}
                    C1_group[i]      <= 0;
                end
                C1_posibility[4] <= Init_com[4][6:0] + Init_com[5][6:0];
                C1_index[4]      <= {Init_com[4][10:7], Init_com[5][10:7]};  // {4'index} {4' index}
                C1_group[4]      <= 1;
            end
            COMBINATION_1: begin
                for (i = 0; i < 3; i = i + 1) begin
                    C2_posibility[i] <= C1_posibility[i];
                    C2_index[i]      <= {C1_index[i][7:4], 8'h0};  // {4' index}{8'h 0}
                    C2_group[i]      <= 0;
                end
                C2_posibility[3] <= C1_posibility[3] + C1_posibility[4];
                C2_index[3]      <= {C1_index[4], C1_index[3][7:4]};  // {8' index}{4'index}
                C2_group[3]      <= 1;
            end
            COMBINATION_2: begin
                for (i = 0; i < 2; i = i + 1) begin
                    C3_posibility[i] <= C2_posibility[i];
                    C3_index[i]      <= {C2_index[i][11:8], 12'h0};  // {4' index}{12'h 0}
                    C3_group[i]      <= 0;
                end
                C3_posibility[2] <= C2_posibility[2] + C2_posibility[3];
                C3_index[2]      <= {C2_index[3], C2_index[2][11:8]};  // {12' index}{4'index}
                C3_group[2]      <= 1;
            end
            COMBINATION_3: begin
                for (i = 0; i < 1; i = i + 1) begin
                    C4_posibility[i] <= C3_posibility[i];
                    C4_index[i]      <= {C3_index[i][15:12], 16'h0};  // {4' index}{16'h 0}
                    C4_group[i]      <= 0;
                end
                C4_posibility[1] <= C3_posibility[1] + C3_posibility[2];
                C4_index[1]      <= {C3_index[2], C3_index[1][15:12]};  // {16' index}{4'index}
                C4_group[1]      <= 1;
            end
        endcase
    end

    reg [2:0] COMSMALL_0_switch_index;
    reg [2:0] COMSMALL_1_switch_index;
    reg [2:0] COMSMALL_2_switch_index;
    wire CS0_switch_pair;
    wire CS1_switch_pair;
    wire CS2_switch_pair;
    wire CS3_switch_pair;
    always @(posedge clk or posedge reset) begin
        case (CurrState)
            CLEAR: begin
                COMSMALL_0_switch_index <= 4;
                COMSMALL_1_switch_index <= 3;
                COMSMALL_2_switch_index <= 2;
            end
            COMSMALL_0: begin
                if (COMSMALL_0_switch_index == 1) COMSMALL_0_switch_index <= 4;
                else COMSMALL_0_switch_index <= COMSMALL_0_switch_index - 1;

                if (CS0_switch_pair) begin
                    {C1_index[COMSMALL_0_switch_index],C1_posibility[COMSMALL_0_switch_index],C1_group[COMSMALL_0_switch_index]}  
                    <= {
                        C1_index[COMSMALL_0_switch_index-1],
                        C1_posibility[COMSMALL_0_switch_index-1],
                        C1_group[COMSMALL_0_switch_index-1]
                    };  //switch
                    {C1_index[COMSMALL_0_switch_index-1],C1_posibility[COMSMALL_0_switch_index-1],C1_group[COMSMALL_0_switch_index-1]}  
                    <= {
                        C1_index[COMSMALL_0_switch_index],
                        C1_posibility[COMSMALL_0_switch_index],
                        C1_group[COMSMALL_0_switch_index]
                    };
                end
            end
            COMSMALL_1: begin
                if (COMSMALL_1_switch_index == 1) COMSMALL_1_switch_index <= 3;
                else COMSMALL_1_switch_index <= COMSMALL_1_switch_index - 1;

                if (CS1_switch_pair) begin
                    {C2_index[COMSMALL_1_switch_index],C2_posibility[COMSMALL_1_switch_index],C2_group[COMSMALL_1_switch_index]}  
                    <= {
                        C2_index[COMSMALL_1_switch_index-1],
                        C2_posibility[COMSMALL_1_switch_index-1],
                        C2_group[COMSMALL_1_switch_index-1]
                    };  //switch
                    {C2_index[COMSMALL_1_switch_index-1],C2_posibility[COMSMALL_1_switch_index-1],C2_group[COMSMALL_1_switch_index-1]}  
                    <= {
                        C2_index[COMSMALL_1_switch_index],
                        C2_posibility[COMSMALL_1_switch_index],
                        C2_group[COMSMALL_1_switch_index]
                    };
                end
            end
            COMSMALL_2: begin
                if (COMSMALL_2_switch_index == 1) COMSMALL_2_switch_index <= 2;
                else COMSMALL_2_switch_index <= COMSMALL_2_switch_index - 1;

                if (CS2_switch_pair) begin
                    {C3_index[COMSMALL_2_switch_index],C3_posibility[COMSMALL_2_switch_index],C3_group[COMSMALL_2_switch_index]}  
                    <= {
                        C3_index[COMSMALL_2_switch_index-1],
                        C3_posibility[COMSMALL_2_switch_index-1],
                        C3_group[COMSMALL_2_switch_index-1]
                    };  //switch
                    {C3_index[COMSMALL_2_switch_index-1],C3_posibility[COMSMALL_2_switch_index-1],C3_group[COMSMALL_2_switch_index-1]}  
                    <= {
                        C3_index[COMSMALL_2_switch_index],
                        C3_posibility[COMSMALL_2_switch_index],
                        C3_group[COMSMALL_2_switch_index]
                    };
                end
            end
            COMSMALL_3: begin
                if (CS3_switch_pair) begin
                    {C4_index[1], C4_posibility[1], C4_group[1]} <= {
                        C4_index[0], C4_posibility[0], C4_group[0]
                    };  //switch
                    {C4_index[0], C4_posibility[0], C4_group[0]} <= {
                        C4_index[1], C4_posibility[1], C4_group[1]
                    };
                end
            end
        endcase
    end
    //CS0
    assign CS0_switch_pair = C1_posibility[COMSMALL_0_switch_index] >C1_posibility[COMSMALL_0_switch_index-1];//4 >3
    assign comsmall_0_done = ~CS0_switch_pair;
    //CS1
    assign CS1_switch_pair = C2_posibility[COMSMALL_1_switch_index] >C2_posibility[COMSMALL_1_switch_index-1];//4 >3
    assign comsmall_1_done = ~CS1_switch_pair;
    //CS2
    assign CS2_switch_pair = C3_posibility[COMSMALL_2_switch_index] >C3_posibility[COMSMALL_2_switch_index-1];//4 >3
    assign comsmall_2_done = ~CS2_switch_pair;
    //CS3
    assign CS3_switch_pair = C4_posibility[1] > C4_posibility[0];  //4 >3


    //Split0 
    reg [3:0] symbol_list [0:5];

    reg [4:0] huffman_code[0:5];
    always @(posedge clk) begin
        case (CurrState)
            SPLIT0: begin
                if (C4_group[1]) begin  //last is group example {4,13256}
                    {symbol_list[0]} <= {C4_index[0][19:16]};  //0
                    {symbol_list[1]} <= {C4_index[1][3:0]};  //1
                    {symbol_list[2]} <= {C4_index[1][7:4]};  //1
                    {symbol_list[3]} <= {C4_index[1][11:8]};  //1
                    {symbol_list[4]} <= {C4_index[1][15:12]};  //1
                    {symbol_list[5]} <= {C4_index[1][19:16]};  //1

                end else begin
                    {symbol_list[0]} <= {C4_index[1][19:16]};  //1
                    {symbol_list[1]} <= {C4_index[0][3:0]};  //0
                    {symbol_list[2]} <= {C4_index[0][7:4]};  //0
                    {symbol_list[3]} <= {C4_index[0][11:8]};  //0
                    {symbol_list[4]} <= {C4_index[0][15:12]};  //0
                    {symbol_list[5]} <= {C4_index[0][19:16]};  //0

                end
            end
            SPLIT1: begin

            end
            SPLIT2: begin

            end
        endcase
    end


    integer j;
    always @(*) begin
        if (reset) begin
            for (i = 0; i < 6; i = i + 1) begin
                for (j = 0; j < 6; j = j + 1) begin
                    huffman_code[i][j] <= 0;
                end
            end
        end else begin
            begin  //Group4
                if (C4_group[1]) begin  //last is group example {4,13256}
                    case (C4_index[0][19:16])
                        4'd1: begin
                            huffman_code[0][0] = 0;

                            huffman_code[1][0] = 1;
                            huffman_code[2][0] = 1;
                            huffman_code[3][0] = 1;
                            huffman_code[4][0] = 1;
                            huffman_code[5][0] = 1;
                        end
                        4'd2: begin
                            huffman_code[1][0] = 0;

                            huffman_code[0][0] = 1;
                            huffman_code[2][0] = 1;
                            huffman_code[3][0] = 1;
                            huffman_code[4][0] = 1;
                            huffman_code[5][0] = 1;
                        end
                        4'd3: begin
                            huffman_code[2][0] = 0;

                            huffman_code[1][0] = 1;
                            huffman_code[0][0] = 1;
                            huffman_code[3][0] = 1;
                            huffman_code[4][0] = 1;
                            huffman_code[5][0] = 1;
                        end
                        4'd4: begin
                            huffman_code[3][0] = 0;

                            huffman_code[1][0] = 1;
                            huffman_code[2][0] = 1;
                            huffman_code[0][0] = 1;
                            huffman_code[4][0] = 1;
                            huffman_code[5][0] = 1;
                        end
                        4'd5: begin
                            huffman_code[4][0] = 0;

                            huffman_code[1][0] = 1;
                            huffman_code[2][0] = 1;
                            huffman_code[3][0] = 1;
                            huffman_code[0][0] = 1;
                            huffman_code[5][0] = 1;
                        end
                        4'd6: begin
                            huffman_code[5][0] = 0;

                            huffman_code[1][0] = 1;
                            huffman_code[2][0] = 1;
                            huffman_code[3][0] = 1;
                            huffman_code[4][0] = 1;
                            huffman_code[0][0] = 1;
                        end
                    endcase
                end else begin
                    case (C4_index[1][19:16])
                        4'd1: begin
                            huffman_code[0][0] = 1;

                            huffman_code[1][0] = 0;
                            huffman_code[2][0] = 0;
                            huffman_code[3][0] = 0;
                            huffman_code[4][0] = 0;
                            huffman_code[5][0] = 0;
                        end
                        4'd2: begin
                            huffman_code[1][0] = 1;

                            huffman_code[0][0] = 0;
                            huffman_code[2][0] = 0;
                            huffman_code[3][0] = 0;
                            huffman_code[4][0] = 0;
                            huffman_code[5][0] = 0;
                        end
                        4'd3: begin
                            huffman_code[2][0] = 1;

                            huffman_code[1][0] = 0;
                            huffman_code[0][0] = 0;
                            huffman_code[3][0] = 0;
                            huffman_code[4][0] = 0;
                            huffman_code[5][0] = 0;
                        end
                        4'd4: begin
                            huffman_code[3][0] = 1;

                            huffman_code[1][0] = 0;
                            huffman_code[2][0] = 0;
                            huffman_code[0][0] = 0;
                            huffman_code[4][0] = 0;
                            huffman_code[5][0] = 0;
                        end
                        4'd5: begin
                            huffman_code[4][0] = 1;

                            huffman_code[1][0] = 0;
                            huffman_code[2][0] = 0;
                            huffman_code[3][0] = 0;
                            huffman_code[0][0] = 0;
                            huffman_code[5][0] = 0;
                        end
                        4'd6: begin
                            huffman_code[5][0] = 1;

                            huffman_code[1][0] = 0;
                            huffman_code[2][0] = 0;
                            huffman_code[3][0] = 0;
                            huffman_code[4][0] = 0;
                            huffman_code[0][0] = 0;
                        end
                        default: ;
                    endcase
                end
            end
            begin  //group3 
                case ({
                    C3_group[2], C3_group[1], C3_group[0]
                })
                    3'b100: begin  //group is index 2
                        case (C3_index[1][15:12])
                            4'd1: huffman_code[0][1] = 0;
                            4'd2: huffman_code[1][1] = 0;
                            4'd3: huffman_code[2][1] = 0;
                            4'd4: huffman_code[3][1] = 0;
                            4'd5: huffman_code[4][1] = 0;
                            4'd6: huffman_code[5][1] = 0;
                        endcase
                        case (C3_index[0][15:12])
                            4'd1: huffman_code[0][1] = 0;
                            4'd2: huffman_code[1][1] = 0;
                            4'd3: huffman_code[2][1] = 0;
                            4'd4: huffman_code[3][1] = 0;
                            4'd5: huffman_code[4][1] = 0;
                            4'd6: huffman_code[5][1] = 0;
                        endcase
                        case (C3_index[2][15:12])  //last group
                            4'd1: huffman_code[0][1] = 1;
                            4'd2: huffman_code[1][1] = 1;
                            4'd3: huffman_code[2][1] = 1;
                            4'd4: huffman_code[3][1] = 1;
                            4'd5: huffman_code[4][1] = 1;
                            4'd6: huffman_code[5][1] = 1;
                        endcase
                        case (C3_index[2][11:8])
                            4'd1: huffman_code[0][1] = 1;
                            4'd2: huffman_code[1][1] = 1;
                            4'd3: huffman_code[2][1] = 1;
                            4'd4: huffman_code[3][1] = 1;
                            4'd5: huffman_code[4][1] = 1;
                            4'd6: huffman_code[5][1] = 1;
                        endcase
                        case (C3_index[2][7:4])
                            4'd1: huffman_code[0][1] = 1;
                            4'd2: huffman_code[1][1] = 1;
                            4'd3: huffman_code[2][1] = 1;
                            4'd4: huffman_code[3][1] = 1;
                            4'd5: huffman_code[4][1] = 1;
                            4'd6: huffman_code[5][1] = 1;
                        endcase
                        case (C3_index[2][3:0])
                            4'd1: huffman_code[0][1] = 1;
                            4'd2: huffman_code[1][1] = 1;
                            4'd3: huffman_code[2][1] = 1;
                            4'd4: huffman_code[3][1] = 1;
                            4'd5: huffman_code[4][1] = 1;
                            4'd6: huffman_code[5][1] = 1;
                        endcase

                    end
                    3'b010: begin  //group is index 1
                        case (C3_index[2][15:12])  //last group
                            4'd1: huffman_code[0][1] = 1;
                            4'd2: huffman_code[1][1] = 1;
                            4'd3: huffman_code[2][1] = 1;
                            4'd4: huffman_code[3][1] = 1;
                            4'd5: huffman_code[4][1] = 1;
                            4'd6: huffman_code[5][1] = 1;
                        endcase
                        case (C3_index[0][15:12])
                            4'd1: huffman_code[0][1] = 0;
                            4'd2: huffman_code[1][1] = 0;
                            4'd3: huffman_code[2][1] = 0;
                            4'd4: huffman_code[3][1] = 0;
                            4'd5: huffman_code[4][1] = 0;
                            4'd6: huffman_code[5][1] = 0;
                        endcase
                        case (C3_index[1][15:12])
                            4'd1: huffman_code[0][1] = 0;
                            4'd2: huffman_code[1][1] = 0;
                            4'd3: huffman_code[2][1] = 0;
                            4'd4: huffman_code[3][1] = 0;
                            4'd5: huffman_code[4][1] = 0;
                            4'd6: huffman_code[5][1] = 0;
                        endcase
                        case (C3_index[1][11:8])
                            4'd1: huffman_code[0][1] = 0;
                            4'd2: huffman_code[1][1] = 0;
                            4'd3: huffman_code[2][1] = 0;
                            4'd4: huffman_code[3][1] = 0;
                            4'd5: huffman_code[4][1] = 0;
                            4'd6: huffman_code[5][1] = 0;
                        endcase
                        case (C3_index[1][7:4])
                            4'd1: huffman_code[0][1] = 0;
                            4'd2: huffman_code[1][1] = 0;
                            4'd3: huffman_code[2][1] = 0;
                            4'd4: huffman_code[3][1] = 0;
                            4'd5: huffman_code[4][1] = 0;
                            4'd6: huffman_code[5][1] = 0;
                        endcase
                        case (C3_index[1][3:0])
                            4'd1: huffman_code[0][1] = 0;
                            4'd2: huffman_code[1][1] = 0;
                            4'd3: huffman_code[2][1] = 0;
                            4'd4: huffman_code[3][1] = 0;
                            4'd5: huffman_code[4][1] = 0;
                            4'd6: huffman_code[5][1] = 0;
                        endcase

                    end
                    3'b001: begin  //group is index 0
                        case (C3_index[2][15:12])  //last group
                            4'd1: huffman_code[0][1] = 1;
                            4'd2: huffman_code[1][1] = 1;
                            4'd3: huffman_code[2][1] = 1;
                            4'd4: huffman_code[3][1] = 1;
                            4'd5: huffman_code[4][1] = 1;
                            4'd6: huffman_code[5][1] = 1;
                        endcase
                        case (C3_index[1][15:12])
                            4'd1: huffman_code[0][1] = 0;
                            4'd2: huffman_code[1][1] = 0;
                            4'd3: huffman_code[2][1] = 0;
                            4'd4: huffman_code[3][1] = 0;
                            4'd5: huffman_code[4][1] = 0;
                            4'd6: huffman_code[5][1] = 0;
                        endcase
                        case (C3_index[0][15:12])
                            4'd1: huffman_code[0][1] = 0;
                            4'd2: huffman_code[1][1] = 0;
                            4'd3: huffman_code[2][1] = 0;
                            4'd4: huffman_code[3][1] = 0;
                            4'd5: huffman_code[4][1] = 0;
                            4'd6: huffman_code[5][1] = 0;
                        endcase
                        case (C3_index[0][11:8])
                            4'd1: huffman_code[0][1] = 0;
                            4'd2: huffman_code[1][1] = 0;
                            4'd3: huffman_code[2][1] = 0;
                            4'd4: huffman_code[3][1] = 0;
                            4'd5: huffman_code[4][1] = 0;
                            4'd6: huffman_code[5][1] = 0;
                        endcase
                        case (C3_index[0][7:4])
                            4'd1: huffman_code[0][1] = 0;
                            4'd2: huffman_code[1][1] = 0;
                            4'd3: huffman_code[2][1] = 0;
                            4'd4: huffman_code[3][1] = 0;
                            4'd5: huffman_code[4][1] = 0;
                            4'd6: huffman_code[5][1] = 0;
                        endcase
                        case (C3_index[0][3:0])
                            4'd1: huffman_code[0][1] = 0;
                            4'd2: huffman_code[1][1] = 0;
                            4'd3: huffman_code[2][1] = 0;
                            4'd4: huffman_code[3][1] = 0;
                            4'd5: huffman_code[4][1] = 0;
                            4'd6: huffman_code[5][1] = 0;
                        endcase
                    end
                endcase
            end

            begin  //Group2
                case ({
                    C2_group[3], C2_group[2], C2_group[1], C2_group[0]
                })
                    4'b1000: begin  //last one is group
                        case (C2_index[3][11:8])
                            4'd1: huffman_code[0][2] = 0;
                            4'd2: huffman_code[1][2] = 0;
                            4'd3: huffman_code[2][2] = 0;
                            4'd4: huffman_code[3][2] = 0;
                            4'd5: huffman_code[4][2] = 0;
                            4'd6: huffman_code[5][2] = 0;
                        endcase
                        case (C2_index[3][7:4])
                            4'd1: huffman_code[0][2] = 0;
                            4'd2: huffman_code[1][2] = 0;
                            4'd3: huffman_code[2][2] = 0;
                            4'd4: huffman_code[3][2] = 0;
                            4'd5: huffman_code[4][2] = 0;
                            4'd6: huffman_code[5][2] = 0;
                        endcase
                        case (C2_index[3][3:0])
                            4'd1: huffman_code[0][2] = 0;
                            4'd2: huffman_code[1][2] = 0;
                            4'd3: huffman_code[2][2] = 0;
                            4'd4: huffman_code[3][2] = 0;
                            4'd5: huffman_code[4][2] = 0;
                            4'd6: huffman_code[5][2] = 0;
                        endcase
                        case (C2_index[2][11:8])
                            4'd1: huffman_code[0][2] = 0;
                            4'd2: huffman_code[1][2] = 0;
                            4'd3: huffman_code[2][2] = 0;
                            4'd4: huffman_code[3][2] = 0;
                            4'd5: huffman_code[4][2] = 0;
                            4'd6: huffman_code[5][2] = 0;
                        endcase
                        case (C2_index[1][11:8])
                            4'd1: huffman_code[0][2] = 0;
                            4'd2: huffman_code[1][2] = 0;
                            4'd3: huffman_code[2][2] = 0;
                            4'd4: huffman_code[3][2] = 0;
                            4'd5: huffman_code[4][2] = 0;
                            4'd6: huffman_code[5][2] = 0;
                        endcase
                        case (C2_index[0][11:8])
                            4'd1: huffman_code[0][2] = 1;
                            4'd2: huffman_code[1][2] = 1;
                            4'd3: huffman_code[2][2] = 1;
                            4'd4: huffman_code[3][2] = 1;
                            4'd5: huffman_code[4][2] = 1;
                            4'd6: huffman_code[5][2] = 1;
                        endcase
                    end
                    4'b0100: begin

                        case (C2_index[3][11:8])
                            4'd1: huffman_code[0][2] = 0;
                            4'd2: huffman_code[1][2] = 0;
                            4'd3: huffman_code[2][2] = 0;
                            4'd4: huffman_code[3][2] = 0;
                            4'd5: huffman_code[4][2] = 0;
                            4'd6: huffman_code[5][2] = 0;
                        endcase
                        case (C2_index[2][11:8])
                            4'd1: huffman_code[0][2] = 0;
                            4'd2: huffman_code[1][2] = 0;
                            4'd3: huffman_code[2][2] = 0;
                            4'd4: huffman_code[3][2] = 0;
                            4'd5: huffman_code[4][2] = 0;
                            4'd6: huffman_code[5][2] = 0;
                        endcase
                        case (C2_index[2][7:4])
                            4'd1: huffman_code[0][2] = 0;
                            4'd2: huffman_code[1][2] = 0;
                            4'd3: huffman_code[2][2] = 0;
                            4'd4: huffman_code[3][2] = 0;
                            4'd5: huffman_code[4][2] = 0;
                            4'd6: huffman_code[5][2] = 0;
                        endcase
                        case (C2_index[2][3:0])
                            4'd1: huffman_code[0][2] = 0;
                            4'd2: huffman_code[1][2] = 0;
                            4'd3: huffman_code[2][2] = 0;
                            4'd4: huffman_code[3][2] = 0;
                            4'd5: huffman_code[4][2] = 0;
                            4'd6: huffman_code[5][2] = 0;
                        endcase
                        case (C2_index[1][11:8])
                            4'd1: huffman_code[0][2] = 0;
                            4'd2: huffman_code[1][2] = 0;
                            4'd3: huffman_code[2][2] = 0;
                            4'd4: huffman_code[3][2] = 0;
                            4'd5: huffman_code[4][2] = 0;
                            4'd6: huffman_code[5][2] = 0;
                        endcase
                        case (C2_index[0][11:8])
                            4'd1: huffman_code[0][2] = 1;
                            4'd2: huffman_code[1][2] = 1;
                            4'd3: huffman_code[2][2] = 1;
                            4'd4: huffman_code[3][2] = 1;
                            4'd5: huffman_code[4][2] = 1;
                            4'd6: huffman_code[5][2] = 1;
                        endcase
                    end
                    4'b0010: begin
                        case (C2_index[3][11:8])
                            4'd1: huffman_code[0][2] = 0;
                            4'd2: huffman_code[1][2] = 0;
                            4'd3: huffman_code[2][2] = 0;
                            4'd4: huffman_code[3][2] = 0;
                            4'd5: huffman_code[4][2] = 0;
                            4'd6: huffman_code[5][2] = 0;
                        endcase
                        case (C2_index[2][11:8])
                            4'd1: huffman_code[0][2] = 0;
                            4'd2: huffman_code[1][2] = 0;
                            4'd3: huffman_code[2][2] = 0;
                            4'd4: huffman_code[3][2] = 0;
                            4'd5: huffman_code[4][2] = 0;
                            4'd6: huffman_code[5][2] = 0;
                        endcase
                        case (C2_index[1][11:8])
                            4'd1: huffman_code[0][2] = 0;
                            4'd2: huffman_code[1][2] = 0;
                            4'd3: huffman_code[2][2] = 0;
                            4'd4: huffman_code[3][2] = 0;
                            4'd5: huffman_code[4][2] = 0;
                            4'd6: huffman_code[5][2] = 0;
                        endcase
                        case (C2_index[1][7:4])
                            4'd1: huffman_code[0][2] = 0;
                            4'd2: huffman_code[1][2] = 0;
                            4'd3: huffman_code[2][2] = 0;
                            4'd4: huffman_code[3][2] = 0;
                            4'd5: huffman_code[4][2] = 0;
                            4'd6: huffman_code[5][2] = 0;
                        endcase
                        case (C2_index[1][3:0])
                            4'd1: huffman_code[0][2] = 0;
                            4'd2: huffman_code[1][2] = 0;
                            4'd3: huffman_code[2][2] = 0;
                            4'd4: huffman_code[3][2] = 0;
                            4'd5: huffman_code[4][2] = 0;
                            4'd6: huffman_code[5][2] = 0;
                        endcase
                        case (C2_index[0][11:8])
                            4'd1: huffman_code[0][2] = 1;
                            4'd2: huffman_code[1][2] = 1;
                            4'd3: huffman_code[2][2] = 1;
                            4'd4: huffman_code[3][2] = 1;
                            4'd5: huffman_code[4][2] = 1;
                            4'd6: huffman_code[5][2] = 1;
                        endcase
                    end
                    4'b0001: begin
                        case (C2_index[3][11:8])
                            4'd1: huffman_code[0][2] = 0;
                            4'd2: huffman_code[1][2] = 0;
                            4'd3: huffman_code[2][2] = 0;
                            4'd4: huffman_code[3][2] = 0;
                            4'd5: huffman_code[4][2] = 0;
                            4'd6: huffman_code[5][2] = 0;
                        endcase
                        case (C2_index[2][11:8])
                            4'd1: huffman_code[0][2] = 0;
                            4'd2: huffman_code[1][2] = 0;
                            4'd3: huffman_code[2][2] = 0;
                            4'd4: huffman_code[3][2] = 0;
                            4'd5: huffman_code[4][2] = 0;
                            4'd6: huffman_code[5][2] = 0;
                        endcase
                        case (C2_index[1][11:8])
                            4'd1: huffman_code[0][2] = 0;
                            4'd2: huffman_code[1][2] = 0;
                            4'd3: huffman_code[2][2] = 0;
                            4'd4: huffman_code[3][2] = 0;
                            4'd5: huffman_code[4][2] = 0;
                            4'd6: huffman_code[5][2] = 0;
                        endcase
                        case (C2_index[0][11:8])
                            4'd1: huffman_code[0][2] = 1;
                            4'd2: huffman_code[1][2] = 1;
                            4'd3: huffman_code[2][2] = 1;
                            4'd4: huffman_code[3][2] = 1;
                            4'd5: huffman_code[4][2] = 1;
                            4'd6: huffman_code[5][2] = 1;
                        endcase
                        case (C2_index[0][7:4])
                            4'd1: huffman_code[0][2] = 1;
                            4'd2: huffman_code[1][2] = 1;
                            4'd3: huffman_code[2][2] = 1;
                            4'd4: huffman_code[3][2] = 1;
                            4'd5: huffman_code[4][2] = 1;
                            4'd6: huffman_code[5][2] = 1;
                        endcase
                        case (C2_index[0][3:0])
                            4'd1: huffman_code[0][2] = 1;
                            4'd2: huffman_code[1][2] = 1;
                            4'd3: huffman_code[2][2] = 1;
                            4'd4: huffman_code[3][2] = 1;
                            4'd5: huffman_code[4][2] = 1;
                            4'd6: huffman_code[5][2] = 1;
                        endcase
                    end
                endcase
            end  //Group2 end
            case ({
                C1_group[4], C1_group[3], C1_group[2], C1_group[1], C1_group[0]
            })
                5'b1_0000: ;
                default:   ;
            endcase
        end  //else end
    end








endmodule
// {C1_index[COMSMALL_0_switch_index],C1_posibility[COMSMALL_0_switch_index],C1_group[COMSMALL_0_switch_index]}  
// <= {
//     C1_index[COMSMALL_0_switch_index+1],
//     C1_posibility[COMSMALL_0_switch_index+1],
//     C1_group[COMSMALL_0_switch_index+1]
// };  //switch
// {C1_index[COMSMALL_0_switch_index+1],C1_posibility[COMSMALL_0_switch_index+1],C1_group[COMSMALL_0_switch_index+1]}  
// <= {
//     C1_index[COMSMALL_0_switch_index],
//     C1_posibility[COMSMALL_0_switch_index],
//     C1_group[COMSMALL_0_switch_index]
// };
