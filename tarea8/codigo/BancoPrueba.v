`include "contador_gray_synth.v"
`include "probador.v"
`include "contador_gray.v"

module BancoPruebas();

  wire reset_L,clk,enable;
  wire [4:0] salida_gray, salida_gray_no_error;
    contador_gray contador(/*AUTOINST*/
				  // Outputs
				  .salida_gray_no_error		(salida_gray_no_error[4:0]),
				  // Inputs
				  .clk			(clk),
				  .enable		(enable),
				  .reset_L		(reset_L));
  	contador_gray_synth synth(/*AUTOINST*/
				  // Outputs
				  .salida_gray		(salida_gray[4:0]),
				  // Inputs
				  .clk			(clk),
				  .enable		(enable),
				  .reset_L		(reset_L));
  	probador probador1(/*AUTOINST*/
			   // Outputs
			   .clk			(clk),
			   .reset_L		(reset_L),
			   .enable		(enable),
			   // Inputs
			   .salida_gray		(salida_gray [4:0]));

endmodule
