`timescale 1ns/100ps

`include "mux_desc_conductualTarea2.v"
`include "mux_desc_estructural_tarea34.v"
`include "probadormuxTarea2.v"

module BancoPruebas;
	wire clk, reset_L, selector;
	wire [1:0] data_in0;
    wire [1:0] data_in1; 
    wire [1:0] data_out_estructural;
	wire [1:0] data_out_conductual;
	wire [1:0] tierra;
	wire [4:0] contador_conductual;
	wire [4:0] contador_estructural;

	mux_desc_conductualTarea2  mux_conduc(/*AUTOINST*/
				       // Outputs
				       .data_out	(data_out_conductual[1:0]),
				       // Inputs
				       .clk		(clk),
				       .reset_L		(reset_L),
				       .selector	(selector),
				       .data_in0	(data_in0[1:0]),
				       .data_in1	(data_in1[1:0]));
	mux_desc_estructural_tarea34  mux_estruc(/*AUTOINST*/
					  // Outputs
					  .data_out		(data_out_estructural[1:0]),
					  // Inputs
					  .clk			(clk),
					  .reset_L		(reset_L),
					  .selector		(selector),
					  .tierra		(tierra[1:0]),
					  .data_in0		(data_in0[1:0]),
					  .data_in1		(data_in1[1:0]));
	probadormuxTarea2 probador(/*AUTOINST*/
				   // Outputs
				   .clk			(clk),
				   .reset_L		(reset_L),
				   .selector		(selector),
				   .data_in0		(data_in0[1:0]),
				   .data_in1		(data_in1[1:0]),
				   .tierra		(tierra[1:0]),
				   .contador_conductual	(contador_conductual[4:0]),
				   .contador_estructural(contador_estructural[4:0]),
				   // Inputs
				   .data_out_estructural(data_out_estructural[1:0]),
				   .data_out_conductual	(data_out_conductual[1:0]));
endmodule
