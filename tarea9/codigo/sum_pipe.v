`include "etapa1.v"
`include "etapa2.v"
`include "etapatransicion.v"
module sum_pipe(	
                input [3:0] dataA,
                input [3:0] dataB,
                input clk,
                input reset_L,
				output [3:0] sum30_dd
);

	wire [1:0] sum10;
	wire [1:0] sum10_d;
    wire acarreo;
	wire reset_L_d;
	wire [3:0] dataA_d;
    wire [3:0] dataB_d;
	wire [3:0] dataA_dd;
    wire [3:0] dataB_dd;

   	etapa1 e1(/*AUTOINST*/
		  // Outputs
		  .sum10		(sum10[1:0]),
		  .acarreo		(acarreo),
		  .dataA_d		(dataA_d[3:0]),
		  .dataB_d		(dataB_d[3:0]),
		  .reset_L_d	(reset_L_d),
		  // Inputs
		  .dataA		(dataA[3:0]),
		  .dataB		(dataB[3:0]),
		  .clk			(clk),
		  .reset_L		(reset_L));
	etapatransicion et(/*AUTOINST*/
		  // Output
		  .dataA_dd		(dataA_dd[3:0]),
		  .dataB_dd		(dataB_dd[3:0]),
		  .sum10_d		(sum10_d[1:0]),
		  .reset_L_dd	(reset_L_dd),
		  // Inputs
		  .dataA_d		(dataA_d[3:0]),
		  .dataB_d		(dataB_d[3:0]),
		  .sum10		(sum10[1:0]),
		  .clk			(clk),
		  .reset_L_d	(reset_L_d));

   	etapa2 e2(/*AUTOINST*/
		  // Outputs
		  .sum30_dd		(sum30_dd[3:0]),
		  // Inputs
		  .dataA_d		(dataA_dd[3:0]),
		  .dataB_d		(dataB_dd[3:0]),
		  .clk			(clk),
		  .reset_L		(reset_L_dd),
		  .sum10_d		(sum10_d[1:0]),
		  .acarreo_d	(acarreo));
   
endmodule
