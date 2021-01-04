`include "sum_pipe.v"
`include "identificador_completo.v"
module sumador(	
                input [3:0] dataA,
                input [3:0] dataB,
                input clk,
                input reset_L,
                input [3:0] idx,
				output [3:0] sum30_dd,
                output [3:0] idx_dd
);

   	sum_pipe pipe(/*AUTOINST*/
		      // Outputs
		      .sum30_dd		(sum30_dd[3:0]),
		      // Inputs
		      .dataA		(dataA[3:0]),
		      .dataB		(dataB[3:0]),
		      .clk		(clk),
		      .reset_L		(reset_L));

    identificador_completo identificadorc(/*AUTOINST*/
					  // Outputs
					  .idx_dd		(idx_dd[3:0]),
					  // Inputs
					  .clk			(clk),
					  .idx			(idx[3:0]));
    
endmodule
