module probador_tarea5( // M�dulo probador: generador de se�ales y monitor de datos
	input 	   [1:0] data_out_sintetizado,
	input	   [1:0] data_out_conductual,
	output reg 		clk,
	output reg 		reset_L,
	output reg 		selector,
	output reg [1:0] data_in0,
	output reg [1:0] data_in1,
	output reg [1:0] tierra,
	output reg [4:0] contador_conductual,
	output reg [4:0] contador_estructural);

	// Bloque de procedimiento, no sintetizable, se recorre una �nica vez
	// Generalmente, los initial s�lo se usan en los testbench o probadores
	// Se recomienda siempre sincronizar con el reloj y utilizar
	// asignaciones no bloqueantes en la generaci�n de se�ales
	

	
	initial begin
		
		$dumpfile("mux_tarea5.vcd");	// Nombre de archivo del "dump"
		$dumpvars;			// Directiva para "dumpear" variables
		// Mensaje que se imprime en consola una vez
		$display ("\t\t\tclk,\tout,\treset,\tselector,\tin0,\tin1");
		// Mensaje que se imprime en consola cada vez que un elemento de la lista cambia
		$monitor($time,"\t%b\t%b\t\t%b\t%b\t%b\t%b", clk, data_out_conductual, data_out_sintetizado, selector, reset_L, data_in0, data_in1);
		{selector, reset_L} = 2'b0; // A los 2 bits, asigna un tipo bit con valor 0.
		{data_in0,data_in1} = 2'b00;
		tierra=2'b00;
		{contador_conductual,contador_estructural} = 2'b0;

		repeat (1) begin		// Repite 2 veces
								// Es muy importante la notaci�n de sincronizar con @(posedge clk); y luego,
								// hacer una asignaci�n no bloqueante ( <= ), les va a ahorrar tiempo. 
        		@(posedge clk);	// Espera/sincroniza con el flanco positivo del reloj
				reset_L <= 1; 
        		selector <= 0; //asignaci�n no bloqueante 
		end

		

        @(posedge clk)
        data_in0 <= 2'b11;
		data_in1 <= 2'b10;
		
        @(posedge clk)
        data_in0 <= 2'b01;
		data_in1 <= 2'b00;
        selector <= 1;
        
        @(posedge clk)
        data_in0 <= 2'b00;
		data_in1 <= 2'b10;
        
        @(posedge clk)
        data_in0 <= 2'b11;
		data_in1 <= 2'b11;
        selector <= 0;
        
        @(posedge clk)
        data_in0 <= 2'b00;
		data_in1 <= 2'b01;
        selector <= 1;

        @(posedge clk)
        data_in0 <= 2'b10;
		data_in1 <= 2'b00;
        selector <= 0;

		@(posedge clk)
        selector <= 1;

		@(posedge clk)
        data_in0 <= 2'b10;
		data_in1 <= 2'b00;
        selector <= 1;

		

		$finish;			// Termina de almacenar se�ales
	end

	// Poner los contadores
	always @(posedge data_out_conductual)begin
		contador_conductual= contador_conductual+ 1;
	end
	always @(posedge data_out_sintetizado)begin
		contador_estructural= contador_estructural+ 1;
	end

	//Poner Checker
	
	always @(posedge clk)begin
		if(data_out_conductual != data_out_sintetizado)begin
			$display("Diferencia modulo conductual y estructural");
		end
			
	end

	// Reloj
	initial	clk 	<= 0;			// Valor inicial al reloj, sino siempre ser� indeterminado
	always	#11.9 clk 	<= ~clk;		// Hace "toggle" cada 2*1ns
endmodule
