`timescale 	1ns	/ 100ps

`include "mux1bit_tarea34.v"
`include "probador1bit_tarea34.v"

module BancoPrueba1bit_tarea34;
	wire clk, A, B, F_and, F_or, F_not, salida, selector;
	
	AND_tarea34 and1(/*AUTOINST*/
			 // Outputs
			 .F_and			(F_and),
			 // Inputs
			 .A			(A),
			 .B			(B));

	OR_tarea34 or1(/*AUTOINST*/
		       // Outputs
		       .F_or		(F_or),
		       // Inputs
		       .A		(A),
		       .B		(B));

	NOT_tarea34 not1(/*AUTOINST*/
			 // Outputs
			 .F_not			(F_not),
			 // Inputs
			 .A			(A));

	mux1bit_tarea34 mux1(/*AUTOINST*/
			     // Outputs
			     .salida		(salida),
			     // Inputs
			     .A			(A),
			     .B			(B),
			     .selector		(selector));

	probador1bit_tarea34 prob( /*AUTOINST*/
				  // Outputs
				  .A			(A),
				  .B			(B),
				  .selector		(selector),
				  .clk			(clk),
				  // Inputs
				  .F_and		(F_and),
				  .F_or			(F_or),
				  .F_not		(F_not),
				  .salida		(salida));

endmodule
