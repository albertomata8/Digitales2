module identificador(	
                input clk,
                input [3:0] idx,
                output reg [3:0] idx_d
);
always @(posedge clk)begin
        idx_d <= idx;
    end
endmodule