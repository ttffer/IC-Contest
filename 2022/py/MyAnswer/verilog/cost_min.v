module cost_min (
    input CLK,
    input RST,
    input Last,
    input [6:0] cost,
    output reg [9:0] MinCost,
    output reg [3:0] MatchCount,
    output reg Valid
);
    reg [9:0] Accumulator;
    reg [2:0] CheckCounter;
    reg RST_delay_0;
    reg RST_delay_1;
    reg RST_delay_2;
    reg RST_delay_3;
    wire Period_1;
    wire Period_5;
    assign Period_1 = (CheckCounter == 1);
    assign Period_5 = (CheckCounter == 5);
    always @(posedge CLK) begin
        RST_delay_0 <= RST;
        RST_delay_1 <= RST_delay_0;
        RST_delay_2 <= RST_delay_1;
        RST_delay_3 <= RST_delay_2;
    end

    //Accumulator
    always @(posedge CLK) begin
        if (RST_delay_1) begin
            Accumulator <= 0;
        end else begin
            if (Period_1) Accumulator <= cost;
            else Accumulator <= Accumulator + cost;

        end
    end
    //CheckCounter
    always @(posedge CLK) begin
        if (RST_delay_1) begin
            CheckCounter <= 0;
        end else begin
            if (CheckCounter == 7) CheckCounter <= 0;
            else begin
                CheckCounter <= CheckCounter + 1;
            end
        end
    end
    // last signal
    reg [7:0] last_propagate;
    integer i;
    always @(posedge CLK) begin
        if (RST_delay_1) begin
            for (i = 0; i < 8; i = i + 1) last_propagate[i] <= 0;
            Valid <= 0;
        end else begin
            last_propagate[0] <= Last;
            for (i = 0; i < 7; i = i + 1) last_propagate[i+1] <= last_propagate[i];
            Valid <= last_propagate[7];
        end
    end
    //last Accumulator 
    reg [9:0] PreviousAcc;
    always @(posedge CLK) begin
        if (RST_delay_3)
            PreviousAcc <= {10{1'b1}};//To deal with initial value from 1st Acc when CheckCounter==1
        else begin
            if (Period_1) PreviousAcc <= Accumulator;
            else;  // Nothing
        end
    end


    //Mincost 
    always @(posedge CLK) begin
        if (RST_delay_1) MinCost <= {10{1'b1}};
        else begin
            if (Period_1) begin
                MinCost <= (PreviousAcc < MinCost) ? PreviousAcc : MinCost;
            end else begin
                MinCost <= MinCost;  // ?
            end
        end
    end

    //MatchCount
    always @(posedge CLK) begin
        if (RST) MatchCount <= 0;
        else begin
            if ((Period_5)) begin
                case ({
                    PreviousAcc < MinCost, PreviousAcc == MinCost
                })
                    2'b10:   MatchCount <= 1;
                    2'b01:   MatchCount <= MatchCount + 1;
                    default: MatchCount <= MatchCount;
                endcase
                // if (PreviousAcc < MinCost) MatchCount <= 1;
                // else begin
                //     if (PreviousAcc == MinCost) MatchCount <= MatchCount + 1;
                //     else MatchCount <= MatchCount;  //?
                // end
            end else begin
                MatchCount <= MatchCount;  //?
            end
        end
    end

endmodule
