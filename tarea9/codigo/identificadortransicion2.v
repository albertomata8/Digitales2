module identificadortransicion2(	
                input clk,
                input [3:0] idx_transicion,
                output reg [3:0] idx_transicion2
);
always @(posedge clk)begin
        idx_transicion2 <= idx_transicion;
    end
endmodule