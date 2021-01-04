`timescale 	1ns	/ 100ps

`include "mux2a1_2b_desc_conductual.v"
`include "probadormux2a1_2b.v"
`include "sintetizado2a1_2b.v"

module BancoPrueba2a1_2b;
	wire clk, reset_L, selector, valid_in0, valid_in1, valid_data_out2a1_2b;
	wire [1:0] data_in02a1_2b;
    wire [1:0] data_in12a1_2b; 
    wire [1:0] data_out_conductual2a1_2b;
	wire [1:0] data_out_sintetizado2a1_2b;

	mux2a1_2b_desc_conductual  mux(/*AUTOINST*/
				 // Outputs
				 .data_out_conductual2a1_2b	(data_out_conductual2a1_2b[1:0]),
				 .valid_data_out2a1_2b	(valid_data_out2a1_2b),
				 // Inputs
				 .clk			(clk),
				 .reset_L		(reset_L),
				 .selector		(selector),
				 .valid_in0		(valid_in0),
				 .valid_in1		(valid_in1),
				 .data_in02a1_2b		(data_in02a1_2b[1:0]),
				 .data_in12a1_2b		(data_in12a1_2b[1:0]));

	sintetizado2a1_2b mux_estruc(/*AUTOINST*/
			       // Outputs
			       .data_out_conductual2a1_2b (data_out_sintetizado2a1_2b[1:0]),
			       .valid_data_out2a1_2b	(valid_data_out2a1_2b),
			       // Inputs
			       .clk		(clk),
			       .data_in02a1_2b	(data_in02a1_2b[1:0]),
			       .data_in12a1_2b	(data_in12a1_2b[1:0]),
			       .reset_L		(reset_L),
			       .selector	(selector),
			       .valid_in0	(valid_in0),
			       .valid_in1	(valid_in1));

	probadormux2a1_2b    probador(/*AUTOINST*/
				// Outputs
				.clk		(clk),
				.reset_L	(reset_L),
				.selector	(selector),
				.valid_in0	(valid_in0),
				.valid_in1	(valid_in1),
				.data_in02a1_2b	(data_in02a1_2b[1:0]),
				.data_in12a1_2b	(data_in12a1_2b[1:0]),
				// Inputs
				.data_out_conductual2a1_2b(data_out_conductual2a1_2b[1:0]),
				.data_out_sintetizado2a1_2b(data_out_sintetizado2a1_2b[1:0]),
				.valid_data_out2a1_2b	(valid_data_out2a1_2b));
endmodule
