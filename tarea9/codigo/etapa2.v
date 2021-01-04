module etapa2(
        input [3:0] dataA_d,
        input [3:0] dataB_d,
        input clk,
        input reset_L,
        input [1:0] sum10_d,
        input acarreo_d,
        output reg [3:0] sum30_dd
    );
    reg [1:0] sumatotal;

    always @(posedge clk)begin
        if (!reset_L) begin
            sumatotal <= 0;
        end 
        else begin
            sumatotal<= dataA_d[3:2] + dataB_d[3:2]+acarreo_d;
            sum30_dd[3:2] <= sumatotal;
            sum30_dd[1:0] <= sum10_d;
        end
    end
endmodule