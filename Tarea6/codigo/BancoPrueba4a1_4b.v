`timescale 	1ns	/ 100ps

`include "mux4a1_4b_desc_conductual.v"
`include "probadormux4a1_4b.v"
`include "sintetizado4a1_4b.v"

module BancoPrueba4a1_4b;
	wire clk, reset_L, valid_in0, valid_in1, valid_in2, valid_in3, valid_data_out4a1_4b;
    wire [2:0] selector;
	wire [3:0] data_in04a1_4b;
    wire [3:0] data_in14a1_4b;
    wire [3:0] data_in24a1_4b;
    wire [3:0] data_in34a1_4b;  
    wire [3:0] data_out_conductual4a1_4b;
	wire [3:0] data_out_sintetizado4a1_4b;

	mux4a1_4b_desc_conductual  mux(/*AUTOINST*/
				       // Outputs
				       .data_out_conductual4a1_4b(data_out_conductual4a1_4b[3:0]),
				       .valid_data_out4a1_4b(valid_data_out4a1_4b),
				       // Inputs
				       .clk		(clk),
				       .reset_L		(reset_L),
				       .valid_in0	(valid_in0),
				       .valid_in1	(valid_in1),
				       .valid_in2	(valid_in2),
				       .valid_in3	(valid_in3),
				       .selector	(selector[2:0]),
				       .data_in04a1_4b	(data_in04a1_4b[3:0]),
				       .data_in14a1_4b	(data_in14a1_4b[3:0]),
				       .data_in24a1_4b	(data_in24a1_4b[3:0]),
				       .data_in34a1_4b	(data_in34a1_4b[3:0]));

	sintetizado4a1_4b mux_estruc1(/*AUTOINST*/
				      // Outputs
				      .data_out_conductual4a1_4b(data_out_sintetizado4a1_4b[3:0]),
				      .valid_data_out4a1_4b(valid_data_out4a1_4b),
				      // Inputs
				      .clk		(clk),
				      .data_in04a1_4b	(data_in04a1_4b[3:0]),
				      .data_in14a1_4b	(data_in14a1_4b[3:0]),
				      .data_in24a1_4b	(data_in24a1_4b[3:0]),
				      .data_in34a1_4b	(data_in34a1_4b[3:0]),
				      .reset_L		(reset_L),
				      .selector		(selector[2:0]),
				      .valid_in0	(valid_in0),
				      .valid_in1	(valid_in1),
				      .valid_in2	(valid_in2),
				      .valid_in3	(valid_in3));

	probadormux4a1_4b probador(/*AUTOINST*/
				   // Outputs
				   .clk			(clk),
				   .reset_L		(reset_L),
				   .selector		(selector[2:0]),
				   .valid_in0		(valid_in0),
				   .valid_in1		(valid_in1),
				   .valid_in2		(valid_in2),
				   .valid_in3		(valid_in3),
				   .data_in04a1_4b	(data_in04a1_4b[3:0]),
				   .data_in14a1_4b	(data_in14a1_4b[3:0]),
				   .data_in24a1_4b	(data_in24a1_4b[3:0]),
				   .data_in34a1_4b	(data_in34a1_4b[3:0]),
				   // Inputs
				   .data_out_conductual4a1_4b(data_out_conductual4a1_4b[3:0]),
				   .data_out_sintetizado4a1_4b(data_out_sintetizado4a1_4b[3:0]),
				   .valid_data_out4a1_4b(valid_data_out4a1_4b));
endmodule
