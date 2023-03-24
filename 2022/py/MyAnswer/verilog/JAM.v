module JAM (
    input CLK,
    input RST,
    output [2:0] W,
    output [2:0] J,
    input [6:0] Cost,
    output [3:0] MatchCount,
    output [9:0] MinCost,
    output Valid
);


    wire Last_signal;
    cost_min cost_min_dut (
        .CLK(CLK),
        .RST(RST),
        .Last(Last_signal),
        .cost(Cost),
        .MinCost(MinCost),
        .MatchCount(MatchCount),
        .Valid(Valid)
    );

    all_sort all_sort_dut (
        .CLK(CLK),
        .RST(RST),
        .work(W),
        .job(J),
        .all_sort_last(Last_signal)
    );






endmodule


