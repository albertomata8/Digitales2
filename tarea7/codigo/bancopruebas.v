`include "box_bus.v"
`include "probador.v"
`include "maquina_de_estados.v"
`include "box_bus_sintetizado.v"
`include "maquina_de_estados_sintetizado.v"

module BancoPruebas();

  parameter BUS_SIZE = 16;
  parameter WORD_SIZE = 4;
  parameter WORD_NUM = BUS_SIZE/WORD_SIZE;

  wire reset,clk;
  wire [BUS_SIZE-1:0] data_in;
  wire [BUS_SIZE-1:0] data_out;
  wire [WORD_NUM-1:0] control;
  wire error;
  wire proximo_error;
  wire [3:0] estado_presente;
  wire [3:0] proximo_estado;
  wire error_sintetizado;
  wire proximo_error_sintetizado;
  wire [3:0] estado_presente_sintetizado;
  wire [3:0] proximo_estado_sintetizado;
  wire [BUS_SIZE-1:0] data_out_sintetizado;
  wire [WORD_NUM-1:0] control_sintetizado;
  	box_bus box(/*AUTOINST*/
	      // Outputs
	      .data_out			(data_out[BUS_SIZE-1:0]),
	      .control			(control[WORD_NUM-1:0]),
	      // Inputs
	      .reset			(reset),
	      .clk			(clk),
	      .data_in			(data_in  [BUS_SIZE-1:0]));
  	box_bus_sintetizado box_sintetizado(/*AUTOINST*/
	      // Outputs
	      .data_out			(data_out_sintetizado[BUS_SIZE-1:0]),
	      .control			(control_sintetizado[WORD_NUM-1:0]),
	      // Inputs
	      .reset			(reset),
	      .clk			(clk),
	      .data_in			(data_in  [BUS_SIZE-1:0]));


  	maquina_de_estados m_e(/*AUTOINST*/
			// Outputs
			.error		(error),
			.proximo_error	(proximo_error),
			.estado_presente(estado_presente[3:0]),
			.proximo_estado	(proximo_estado[3:0]),
			// Inputs
			.reset		(reset),
			.clk		(clk),
			.data_in	(data_in[BUS_SIZE-1:0]));

	maquina_de_estados_sintetizado m_e_sintetizado(/*AUTOINST*/
			// Outputs
			.error		(error_sintetizado),
			.proximo_error	(proximo_error_sintetizado),
			.estado_presente(estado_presente_sintetizado[3:0]),
			.proximo_estado	(proximo_estado_sintetizado[3:0]),
			// Inputs
			.reset		(reset),
			.clk		(clk),
			.data_in	(data_in[BUS_SIZE-1:0]));

    probador provador1 (/*AUTOINST*/
				// Outputs
		       .reset		(reset),
		       .clk			(clk),
		       .data_in		(data_in[BUS_SIZE-1:0]),
		       // Inputs
		       .error		(error),
		       .proximo_error	(proximo_error),
		       .estado_presente	(estado_presente[3:0]),
		       .proximo_estado	(proximo_estado[3:0]),
		       .data_out	(data_out[BUS_SIZE-1:0]),
		       .control		(control[WORD_NUM-1:0])
				);


endmodule
