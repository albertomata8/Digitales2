`include "identificador.v"
`include "identificador2.v"
`include "identificadortransicion.v"
`include "identificadortransicion2.v"

module identificador_completo(	
                input clk,
                input [3:0] idx,
                output [3:0] idx_dd
);
	wire [3:0] idx_d;
	wire [3:0] idx_transicion;
	wire [3:0] idx_transicion2;

   	identificador i1(/*AUTOINST*/
			 // Outputs
			 .idx_d			(idx_d[3:0]),
			 // Inputs
			 .clk			(clk),
			 .idx			(idx[3:0]));
	
	identificadortransicion it(/*AUTOINST*/
			  // Outputs
			  .idx_transicion		(idx_transicion[3:0]),
			  // Inputs
			  .clk			(clk),
			  .idx_d		(idx_d[3:0]));
	identificadortransicion2 it2(/*AUTOINST*/
			  // Outputs
			  .idx_transicion2		(idx_transicion2[3:0]),
			  // Inputs
			  .clk			(clk),
			  .idx_transicion		(idx_transicion[3:0]));

   	identificador2 i2(/*AUTOINST*/
			  // Outputs
			  .idx_dd		(idx_dd[3:0]),
			  // Inputs
			  .clk			(clk),
			  .idx_transicion2		(idx_transicion2[3:0]));
   
endmodule
