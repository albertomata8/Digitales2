module probador1bit_tarea34( // M�dulo probador: generador de se�ales y monitor de datos
	input F_and,
    input F_or,
    input F_not,
	input salida,
	output reg A,
	output reg B,
	output reg selector,
	output reg	clk);


	initial begin
		$dumpfile("probador1bit.vcd");	// Nombre de archivo del "dump"
		$dumpvars;			// Directiva para "dumpear" variables

		selector = 0;
		A <= 0;
		B <= 0;

		@(posedge clk)
		A <= 0;
		B <= 1;

		@(posedge clk)
		A <= 1;
		B <= 0;

		@(posedge clk)
		A <= 1;
		B <= 1;

		@(posedge clk)
		selector <= 1;
		A <= 0;
		B <= 0;

		@(posedge clk)
		A <= 0;
		B <= 1;

		@(posedge clk)
		A <= 1;
		B <= 0;

		@(posedge clk)
		A <= 1;
		B <= 1;

		$finish;			// Termina de almacenar se�ales
	end
	// Reloj
	initial	clk 	<= 0;			// Valor inicial al reloj, sino siempre ser� indeterminado
	always	#10 clk 	<= ~clk;		// Hace "toggle" cada 10*1ns
endmodule
