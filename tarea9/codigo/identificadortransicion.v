module identificadortransicion(	
                input clk,
                input [3:0] idx_d,
                output reg [3:0] idx_transicion
);
always @(posedge clk)begin
        idx_transicion <= idx_d;
    end
endmodule