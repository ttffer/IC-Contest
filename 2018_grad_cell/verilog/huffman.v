module huffman (


    input clk,
    input reset,
    input gray_valid,
    input [7:0] gray_data,
    output reg CNT_valid,
    output [7:0] CNT1,
    CNT2,
    CNT3,
    CNT4,
    CNT5,
    CNT6,
    output reg code_valid,
    output reg [7:0] HC1,
    HC2,
    HC3,
    HC4,
    HC5,
    HC6,
    output reg [7:0] M1,
    M2,
    M3,
    M4,
    M5,
    M6
);


  parameter A1 = 8'd1;
  parameter A2 = 8'd2;
  parameter A3 = 8'd3;
  parameter A4 = 8'd4;
  parameter A5 = 8'd5;
  parameter A6 = 8'd6;


  localparam A1_IN_GP = 6'b000001;
  localparam A2_IN_GP = 6'b000010;
  localparam A3_IN_GP = 6'b000100;
  localparam A4_IN_GP = 6'b001000;
  localparam A5_IN_GP = 6'b010000;
  localparam A6_IN_GP = 6'b100000;

  reg [6:0] sym_cnt[1:6];

  //initialization
  reg [6:1] index_table[1:6];
  reg switch;
  wire init_done;
  reg [6:0] data_cnt;
  integer i;
  always @(posedge clk) begin
    if (reset) begin
      for (i = 1; i < 7; i = i + 1) begin
        sym_cnt[i] <= 0;
      end
      index_table[1] <= A1_IN_GP;
      index_table[2] <= A2_IN_GP;
      index_table[3] <= A3_IN_GP;
      index_table[4] <= A4_IN_GP;
      index_table[5] <= A5_IN_GP;
      index_table[6] <= A6_IN_GP;
    end else begin
      if (gray_valid) begin
        case (gray_data)
          A1: sym_cnt[1] <= sym_cnt[1] + 1;
          A2: sym_cnt[2] <= sym_cnt[2] + 1;
          A3: sym_cnt[3] <= sym_cnt[3] + 1;
          A4: sym_cnt[4] <= sym_cnt[4] + 1;
          A5: sym_cnt[5] <= sym_cnt[5] + 1;
          A6: sym_cnt[6] <= sym_cnt[6] + 1;
          default: ;
        endcase
      end else begin
        if (~init_done) begin
          if (switch) begin
            if (sym_cnt[1] < sym_cnt[2]) begin
              sym_cnt[2] <= sym_cnt[1];
              sym_cnt[1] <= sym_cnt[2];
              index_table[2] <= index_table[1];
              index_table[1] <= index_table[2];
            end
            if (sym_cnt[3] < sym_cnt[4]) begin
              sym_cnt[4] <= sym_cnt[3];
              sym_cnt[3] <= sym_cnt[4];
              index_table[4] <= index_table[3];
              index_table[3] <= index_table[4];
            end
            if (sym_cnt[5] < sym_cnt[6]) begin
              sym_cnt[6] <= sym_cnt[5];
              sym_cnt[5] <= sym_cnt[6];
              index_table[6] <= index_table[5];
              index_table[5] <= index_table[6];
            end
          end else begin
            if (sym_cnt[2] < sym_cnt[3]) begin
              sym_cnt[3] <= sym_cnt[2];
              sym_cnt[2] <= sym_cnt[3];
              index_table[3] <= index_table[2];
              index_table[2] <= index_table[3];
            end
            if (sym_cnt[4] < sym_cnt[5]) begin
              sym_cnt[5] <= sym_cnt[4];
              sym_cnt[4] <= sym_cnt[5];
              index_table[5] <= index_table[4];
              index_table[4] <= index_table[5];
            end
          end
        end
      end
    end
  end

  reg receive_done_flag;
  always @(posedge clk) begin
    if (reset) receive_done_flag <= 0;
    else begin
      if (CNT_valid) receive_done_flag <= 1'b1;
    end
  end

  assign init_done =    receive_done_flag &&
                        (sym_cnt[2] <= sym_cnt[1]) &&
                        (sym_cnt[3] <= sym_cnt[2]) &&
                        (sym_cnt[4] <= sym_cnt[3]) &&
                        (sym_cnt[5] <= sym_cnt[4]) &&
                        (sym_cnt[6] <= sym_cnt[5]) ;


  always @(posedge clk) begin
    if (reset) switch <= 0;
    else if (~init_done) begin
      switch <= ~switch;
    end
  end

  always @(posedge clk) begin
    if (reset) data_cnt <= 0;
    else begin
      if (gray_valid) data_cnt <= data_cnt + 1;
      else data_cnt <= 0;
    end
  end

  //assign CNT_valid = (data_cnt == 7'd100);
  always @(posedge clk) begin
    if (data_cnt == 7'd99) CNT_valid <= 1'b1;
    else CNT_valid <= 1'b0;
  end
  assign CNT1 = sym_cnt[1];
  assign CNT2 = sym_cnt[2];
  assign CNT3 = sym_cnt[3];
  assign CNT4 = sym_cnt[4];
  assign CNT5 = sym_cnt[5];
  assign CNT6 = sym_cnt[6];

  //wire [6:0] c1_sym_cnt[1:5];
  reg [6:0] c1_cnt[1:5];
  reg [6:0] c2_cnt[1:4];
  reg [6:0] c3_cnt[1:3];
  reg [6:0] c4_cnt[1:2];
  reg [6:1] c1_gp_member[1:5];
  reg [6:1] c2_gp_member[1:4];
  reg [6:1] c3_gp_member[1:3];
  reg [6:1] c4_gp_member[1:2];
  wire [6:0] c1_group_cnt;
  wire [4:1] c1_com_result;
  reg [4:0] c1_group_idx;
  assign c1_group_cnt = sym_cnt[5] + sym_cnt[6];
  assign c1_com_result[1] = c1_group_cnt > sym_cnt[1];
  assign c1_com_result[2] = c1_group_cnt > sym_cnt[2];
  assign c1_com_result[3] = c1_group_cnt > sym_cnt[3];
  assign c1_com_result[4] = c1_group_cnt > sym_cnt[4];

  always @(*) begin
    case (c1_com_result)
      4'b0001, 4'b0011, 4'b0111, 4'b1111: begin
        c1_group_idx = 5'b00001;
        {c1_gp_member[1], c1_cnt[1]} = {(index_table[5] | index_table[6]), c1_group_cnt};
        {c1_gp_member[2], c1_cnt[2]} = {index_table[1], sym_cnt[1]};
        {c1_gp_member[3], c1_cnt[3]} = {index_table[2], sym_cnt[2]};
        {c1_gp_member[4], c1_cnt[4]} = {index_table[3], sym_cnt[3]};
        {c1_gp_member[5], c1_cnt[5]} = {index_table[4], sym_cnt[4]};
      end
      4'b0010, 4'b0110, 4'b1110: begin
        c1_group_idx = 5'b00010;
        {c1_gp_member[1], c1_cnt[1]} = {index_table[1], sym_cnt[1]};
        {c1_gp_member[2], c1_cnt[2]} = {(index_table[5] | index_table[6]), c1_group_cnt};
        {c1_gp_member[3], c1_cnt[3]} = {index_table[2], sym_cnt[2]};
        {c1_gp_member[4], c1_cnt[4]} = {index_table[3], sym_cnt[3]};
        {c1_gp_member[5], c1_cnt[5]} = {index_table[4], sym_cnt[4]};
      end
      4'b0100, 4'b1100: begin
        c1_group_idx = 5'b00100;
        {c1_gp_member[1], c1_cnt[1]} = {index_table[1], sym_cnt[1]};
        {c1_gp_member[2], c1_cnt[2]} = {index_table[2], sym_cnt[2]};
        {c1_gp_member[3], c1_cnt[3]} = {(index_table[5] | index_table[6]), c1_group_cnt};
        {c1_gp_member[4], c1_cnt[4]} = {index_table[3], sym_cnt[3]};
        {c1_gp_member[5], c1_cnt[5]} = {index_table[4], sym_cnt[4]};
      end
      4'b1000: begin
        c1_group_idx = 5'b01000;
        {c1_gp_member[1], c1_cnt[1]} = {index_table[1], sym_cnt[1]};
        {c1_gp_member[2], c1_cnt[2]} = {index_table[2], sym_cnt[2]};
        {c1_gp_member[3], c1_cnt[3]} = {index_table[3], sym_cnt[3]};
        {c1_gp_member[4], c1_cnt[4]} = {(index_table[5] | index_table[6]), c1_group_cnt};
        {c1_gp_member[5], c1_cnt[5]} = {index_table[4], sym_cnt[4]};
      end
      default: begin
        c1_group_idx = 5'b10000;
        {c1_gp_member[1], c1_cnt[1]} = {index_table[1], sym_cnt[1]};
        {c1_gp_member[2], c1_cnt[2]} = {index_table[2], sym_cnt[2]};
        {c1_gp_member[3], c1_cnt[3]} = {index_table[3], sym_cnt[3]};
        {c1_gp_member[4], c1_cnt[4]} = {index_table[4], sym_cnt[4]};
        {c1_gp_member[5], c1_cnt[5]} = {(index_table[5] | index_table[6]), c1_group_cnt};
      end
    endcase
  end

  wire [6:0] c2_group_cnt;
  wire [3:1] c2_com_result;
  assign c2_group_cnt = c1_cnt[4] + c1_cnt[5];
  assign c2_com_result[1] = c2_group_cnt > c1_cnt[1];
  assign c2_com_result[2] = c2_group_cnt > c1_cnt[2];
  assign c2_com_result[3] = c2_group_cnt > c1_cnt[3];
  reg [4:0] c2_group_idx;
  always @(posedge clk) begin
    case (c2_com_result)
      3'b001, 3'b011, 3'b111: begin
        c2_group_idx <= 4'b0001;
        {c2_gp_member[1], c2_cnt[1]} <= {(c1_gp_member[4] | c1_gp_member[5]), c2_group_cnt};
        {c2_gp_member[2], c2_cnt[2]} <= {c1_gp_member[1], c1_cnt[1]};
        {c2_gp_member[3], c2_cnt[3]} <= {c1_gp_member[2], c1_cnt[2]};
        {c2_gp_member[4], c2_cnt[4]} <= {c1_gp_member[3], c1_cnt[3]};
      end
      3'b010, 3'b110: begin
        c2_group_idx <= 4'b0010;
        {c2_gp_member[1], c2_cnt[1]} <= {c1_gp_member[1], c1_cnt[1]};
        {c2_gp_member[2], c2_cnt[2]} <= {(c1_gp_member[4] | c1_gp_member[5]), c2_group_cnt};
        {c2_gp_member[3], c2_cnt[3]} <= {c1_gp_member[2], c1_cnt[2]};
        {c2_gp_member[4], c2_cnt[4]} <= {c1_gp_member[3], c1_cnt[3]};
      end
      3'b100: begin
        c2_group_idx <= 4'b0100;
        {c2_gp_member[1], c2_cnt[1]} <= {c1_gp_member[1], c1_cnt[1]};
        {c2_gp_member[2], c2_cnt[2]} <= {c1_gp_member[2], c1_cnt[2]};
        {c2_gp_member[3], c2_cnt[3]} <= {(c1_gp_member[4] | c1_gp_member[5]), c2_group_cnt};
        {c2_gp_member[4], c2_cnt[4]} <= {c1_gp_member[3], c1_cnt[3]};
      end
      default: begin
        c2_group_idx <= 4'b1000;
        {c2_gp_member[1], c2_cnt[1]} <= {c1_gp_member[1], c1_cnt[1]};
        {c2_gp_member[2], c2_cnt[2]} <= {c1_gp_member[2], c1_cnt[2]};
        {c2_gp_member[3], c2_cnt[3]} <= {c1_gp_member[3], c1_cnt[3]};
        {c2_gp_member[4], c2_cnt[4]} <= {(c1_gp_member[4] | c1_gp_member[5]), c2_group_cnt};
      end
    endcase
  end


  wire [6:0] c3_group_cnt;
  wire [2:1] c3_com_result;
  assign c3_group_cnt = c2_cnt[3] + c2_cnt[4];
  assign c3_com_result[1] = c3_group_cnt > c2_cnt[1];
  assign c3_com_result[2] = c3_group_cnt > c2_cnt[2];
  reg [2:0] c3_group_idx;
  always @(*) begin
    case (c3_com_result)
      2'b11, 2'b01: begin
        c3_group_idx = 3'b001;
        {c3_gp_member[1], c3_cnt[1]} = {(c2_gp_member[3] | c2_gp_member[4]), c3_group_cnt};
        {c3_gp_member[2], c3_cnt[2]} = {c2_gp_member[1], c2_cnt[1]};
        {c3_gp_member[3], c3_cnt[3]} = {c2_gp_member[2], c2_cnt[2]};
      end
      2'b10: begin
        c3_group_idx = 3'b010;
        {c3_gp_member[1], c3_cnt[1]} = {c2_gp_member[1], c2_cnt[1]};
        {c3_gp_member[2], c3_cnt[2]} = {(c2_gp_member[3] | c2_gp_member[4]), c3_group_cnt};
        {c3_gp_member[3], c3_cnt[3]} = {c2_gp_member[2], c2_cnt[2]};
      end
      default: begin
        c3_group_idx = 3'b100;
        {c3_gp_member[1], c3_cnt[1]} = {c2_gp_member[1], c2_cnt[1]};
        {c3_gp_member[2], c3_cnt[2]} = {c2_gp_member[2], c2_cnt[2]};
        {c3_gp_member[3], c3_cnt[3]} = {(c2_gp_member[3] | c2_gp_member[4]), c3_group_cnt};
      end
    endcase
  end



  wire [6:0] c4_group_cnt;
  wire c4_com_result;
  assign c4_group_cnt  = c3_cnt[2] + c3_cnt[3];
  assign c4_com_result = c4_group_cnt > c3_cnt[1];
  reg [1:0] c4_group_idx;
  always @(*) begin
    case (c4_com_result)
      1'b1: begin
        c4_group_idx = 2'b01;
        {c4_gp_member[1], c4_cnt[1]} = {(c3_gp_member[2] | c3_gp_member[3]), c4_group_cnt};
        {c4_gp_member[2], c4_cnt[2]} = {c3_gp_member[1], c3_cnt[1]};
      end
      default: begin
        c4_group_idx = 2'b10;
        {c4_gp_member[1], c4_cnt[1]} = {c3_gp_member[1], c3_cnt[1]};
        {c4_gp_member[2], c4_cnt[2]} = {(c3_gp_member[2] | c3_gp_member[3]), c4_group_cnt};
      end
    endcase
  end
  reg [2:0] code_len[1:6];
  //huffman code length
  integer j;
  always @(*) begin
    for (j = 1; j < 7; j = j + 1) begin
      code_len[j] = index_table[5][j]+index_table[6][j]
                    +c1_gp_member[4][j] + c1_gp_member[5][j] 
                    +c2_gp_member[3][j] +c2_gp_member[4][j] 
                    +c3_gp_member[2][j] +c3_gp_member[3][j] 
                    +c4_gp_member[1][j] +c4_gp_member[2][j];
    end
  end

  //huffman code encoding
  //  wire [7:0] huffman_code[1:6];
  //   genvar hc_i;
  //   generate
  //     for (hc_i = 1; hc_i < 7; hc_i = hc_i + 1) begin : huffman_code_gen
  //       assign huffman_code[hc_i] = {
  //         c4_gp_member[2][hc_i],
  //         c3_gp_member[3][hc_i],
  //         c2_gp_member[4][hc_i],
  //         c1_gp_member[5][hc_i],
  //         index_table[6][hc_i],
  //         3'b000
  //       };
  //     end
  //   endgenerate
  //mask
  //huffan encode cnt
  reg [2:0] hc_cnt[1:6];
  reg [2:0] finish_cnt;
  reg group_valid;
  integer cnt_i;
  always @(posedge clk) begin
    if (~group_valid) begin
      finish_cnt <= 5;
    end else begin
      finish_cnt <= finish_cnt - 1;
    end
  end

  always @(posedge clk) begin
    for (cnt_i = 1; cnt_i < 7; cnt_i = cnt_i + 1) begin
      if (~group_valid) begin
        hc_cnt[cnt_i] <= 7;
      end else begin
        case (finish_cnt)
          3'd5: begin
            hc_cnt[cnt_i] <= hc_cnt[cnt_i] - 1;
          end
          3'd4: begin
            if (c3_gp_member[2][cnt_i] | c3_gp_member[3][cnt_i]) hc_cnt[cnt_i] <= hc_cnt[cnt_i] - 1;
          end
          3'd3: begin
            if (c2_gp_member[3][cnt_i] | c2_gp_member[4][cnt_i]) hc_cnt[cnt_i] <= hc_cnt[cnt_i] - 1;
          end
          3'd2: begin
            if (c1_gp_member[4][cnt_i] | c1_gp_member[5][cnt_i]) hc_cnt[cnt_i] <= hc_cnt[cnt_i] - 1;
          end
          3'd1: begin
            if (index_table[5][cnt_i] | index_table[6][cnt_i]) hc_cnt[cnt_i] <= hc_cnt[cnt_i] - 1;
          end
          default: ;
        endcase
      end
    end
  end
  //huffman encoding
  reg [7:0] huffman_code[1:6];

  always @(posedge clk) begin
    for (cnt_i = 1; cnt_i < 7; cnt_i = cnt_i + 1) begin
      if (reset) huffman_code[cnt_i] <= 0;
      else if (group_valid) begin
        case (finish_cnt)
          3'd5: begin
            if (c4_gp_member[2][cnt_i]) huffman_code[cnt_i][hc_cnt[cnt_i]] <= 1;
          end
          3'd4: begin
            if (c3_gp_member[3][cnt_i]) huffman_code[cnt_i][hc_cnt[cnt_i]] <= 1;
          end
          3'd3: begin
            if (c2_gp_member[4][cnt_i]) huffman_code[cnt_i][hc_cnt[cnt_i]] <= 1;
          end
          3'd2: begin
            if (c1_gp_member[5][cnt_i]) huffman_code[cnt_i][hc_cnt[cnt_i]] <= 1;
          end
          3'd1: begin
            if (index_table[6][cnt_i]) huffman_code[cnt_i][hc_cnt[cnt_i]] <= 1;
          end
          default: ;  //? 
        endcase
      end

    end
  end
  // code valid
  always @(posedge clk) begin
    if (finish_cnt == 0) code_valid <= 1;
    else code_valid <= 0;
  end

  always @(posedge clk) begin
    M1  <= 8'b1111_1111 >> (8 - code_len[1]);
    M2  <= 8'b1111_1111 >> (8 - code_len[2]);
    M3  <= 8'b1111_1111 >> (8 - code_len[3]);
    M4  <= 8'b1111_1111 >> (8 - code_len[4]);
    M5  <= 8'b1111_1111 >> (8 - code_len[5]);
    M6  <= 8'b1111_1111 >> (8 - code_len[6]);

    HC1 <= huffman_code[1] >> (8 - code_len[1]);
    HC2 <= huffman_code[2] >> (8 - code_len[2]);
    HC3 <= huffman_code[3] >> (8 - code_len[3]);
    HC4 <= huffman_code[4] >> (8 - code_len[4]);
    HC5 <= huffman_code[5] >> (8 - code_len[5]);
    HC6 <= huffman_code[6] >> (8 - code_len[6]);
  end
  reg [1:0] cnt_o;
  //group_valid 
  always @(posedge clk) begin
    if (reset) begin
      cnt_o <= 2'd2;
    end else begin
      if (~init_done) cnt_o <= 2'd2;
      else begin
        if (cnt_o <= 2'd2) cnt_o <= cnt_o - 1;
        else cnt_o <= 2'd3;
      end
    end
  end
  always @(posedge clk) begin
    if (reset) group_valid <= 0;
    else if (cnt_o == 0) group_valid <= 1;
  end



  //   wire [2:0] len;
  //   assign len = my_log2({6'b10_0000}) + 1;
  //   function integer my_log2;
  //     input integer vector;
  //     begin
  //       vector = vector - 1;
  //       for (my_log2 = 0; vector > 0; my_log2 = my_log2 + 1) vector = vector >> 1;
  //     end
  //   endfunction
endmodule
