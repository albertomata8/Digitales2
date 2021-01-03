module probador2bit_tarea34( // M�dulo probador: generador de se�ales y monitor de datos
	input [1:0] Q,
    input [1:0] salida,
    output reg [1:0] A,
    output reg [1:0] B,
	output reg selector,
	output reg	clk);


	initial begin
		$dumpfile("probador2bit.vcd");	// Nombre de archivo del "dump"
		$dumpvars;			// Directiva para "dumpear" variables

		selector = 0;
        A = 2'b00;
        B= 2'b00;

		@(posedge clk)
		A <= 2'b01;

		@(posedge clk)
		A <= 2'b10;

		@(posedge clk)
		A <= 2'b11;

		@(posedge clk)
		selector <= 1;
		B= 2'b01;
        A <= 2'b00;
		@(posedge clk)
		B= 2'b10;
		@(posedge clk)
		B= 2'b11;


		$finish;			// Termina de almacenar se�ales
	end
	// Reloj
	initial	clk 	<= 0;			// Valor inicial al reloj, sino siempre ser� indeterminado
	always	#10 clk 	<= ~clk;		// Hace "toggle" cada 10*1ns
endmodule
