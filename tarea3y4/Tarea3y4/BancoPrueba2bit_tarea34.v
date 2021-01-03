`timescale 	1ns	/ 100ps

`include "mux2bit_tarea34.v"
`include "floop_tarea34.v"
`include "probador2bit_tarea34.v"

module BancoPrueba2bit_tarea34;
	wire clk, selector;
    wire [1:0] A;
    wire [1:0] B; 
    wire [1:0] Q;
    wire [1:0] salida;
	
    floop_tarea34 floop(/*AUTOINST*/
			// Outputs
			.Q		(Q[1:0]),
			// Inputs
			.D		(A[1:0]),
			.clk		(clk));

	mux2bit_tarea34 mux2(/*AUTOINST*/
			     // Outputs
			     .salida		(salida[1:0]),
			     // Inputs
			     .A			(A[1:0]),
			     .B			(B[1:0]),
			     .selector		(selector));

	probador2bit_tarea34 prob( /*AUTOINST*/
				  // Outputs
				  .A			(A[1:0]),
				  .B			(B[1:0]),
				  .selector		(selector),
				  .clk			(clk),
				  // Inputs
				  .Q			(Q[1:0]),
				  .salida		(salida[1:0]));

endmodule
