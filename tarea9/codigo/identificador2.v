module identificador2(	
                input clk,
                input [3:0] idx_transicion2,
                output reg [3:0] idx_dd
);
always @(posedge clk)begin
        idx_dd <= idx_transicion2;
    end
endmodule