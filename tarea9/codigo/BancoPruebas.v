`include "sumador.v"
`include "sumador_synth.v"
`include "probador.v"

module BancoPruebas();
    wire acarreo, clk, reset_L;
	//wire clk_2f;
    wire [3:0] sum30_dd, sum30_dd_synth;
    wire [3:0] dataA;
    wire [3:0] dataB;
	wire [3:0] idx, idx_dd, idx_dd_synth;
    sumador sum(/*AUTOINST*/
		// Outputs
		.sum30_dd		(sum30_dd[3:0]),
		.idx_dd			(idx_dd[3:0]),
		// Inputs
		.dataA			(dataA[3:0]),
		.dataB			(dataB[3:0]),
		.clk			(clk),
		.reset_L		(reset_L),
		.idx			(idx[3:0]));
    sumador_synth sum_synth(/*AUTOINST*/
			    // Outputs
			    .idx_dd		(idx_dd_synth[3:0]),
			    .sum30_dd		(sum30_dd_synth[3:0]),
			    // Inputs
			    .clk		(clk),
			    .dataA		(dataA[3:0]),
			    .dataB		(dataB[3:0]),
			    .idx		(idx[3:0]),
			    .reset_L		(reset_L));
  	probador probador1(/*AUTOINST*/
			   // Outputs
			   .dataA		(dataA[3:0]),
			   .dataB		(dataB[3:0]),
			   .idx			(idx[3:0]),
			   .clk			(clk),
			   //.clk_2f			(clk_2f),
			   .reset_L		(reset_L),
			   // Inputs
			   .sum30_dd		(sum30_dd[3:0]),
			   .idx_dd		(idx_dd[3:0]),
			   .sum30_dd_synth	(sum30_dd_synth[3:0]),
			   .idx_dd_synth	(idx_dd_synth[3:0]));

endmodule
