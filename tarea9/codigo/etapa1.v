module etapa1(
        input [3:0] dataA,
        input [3:0] dataB,
        input clk,
        input reset_L,
        output reg [1:0] sum10,
        output reg [3:0] dataA_d,
        output reg [3:0] dataB_d,
        output reg acarreo,
        output reg reset_L_d
    );
    reg [2:0] sumatotal;

    always @(posedge clk)begin
        if (!reset_L) begin
            sum10 <= 0;
            acarreo <= 0;
            sumatotal <= 0;
        end 
        else begin
            sumatotal <= dataA[1:0] + dataB[1:0];
            sum10 <= sumatotal[1:0];
            acarreo <= sumatotal[2];
        end
        dataA_d <= dataA;
        dataB_d <= dataB;
        reset_L_d <= reset_L;
    end
endmodule