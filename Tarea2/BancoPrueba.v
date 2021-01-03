`timescale 	1s	/ 1s

`include "mux_desc_conductual.v"
`include "probadormux.v"

module BancoPruebas;
	wire clk, reset_L, selector;
	wire [1:0] data_in0;
    wire [1:0] data_in1; 
    wire [1:0] data_out;

	mux_desc_conductual  mux(/*AUTOINST*/
				 // Outputs
				 .data_out		(data_out[1:0]),
				 // Inputs
				 .clk			(clk),
				 .reset_L		(reset_L),
				 .selector		(selector),
				 .data_in0		(data_in0[1:0]),
				 .data_in1		(data_in1[1:0]));
	probadormux    probador(/*AUTOINST*/
				// Outputs
				.clk		(clk),
				.reset_L	(reset_L),
				.selector	(selector),
				.data_in0	(data_in0[1:0]),
				.data_in1	(data_in1[1:0]),
				// Inputs
				.data_out	(data_out[1:0]));
endmodule
