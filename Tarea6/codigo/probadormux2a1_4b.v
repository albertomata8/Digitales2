module probadormux2a1_4b( // M�dulo probador: generador de se�ales y monitor de datos
	input 	   [3:0] data_out_conductual2a1_4b,
	input	   [3:0] data_out_sintetizado2a1_4b,
	input			valid_data_out2a1_4b,
	output reg 		clk,
	output reg 		reset_L,
	output reg 		selector,
	output reg		valid_in0,
	output reg      valid_in1,
	output reg [3:0] data_in02a1_4b,
	output reg [3:0] data_in12a1_4b);

	// Bloque de procedimiento, no sintetizable, se recorre una �nica vez
	// Generalmente, los initial s�lo se usan en los testbench o probadores
	// Se recomienda siempre sincronizar con el reloj y utilizar
	// asignaciones no bloqueantes en la generaci�n de se�ales
	initial begin
		$dumpfile("mux2a1_4b.vcd");	// Nombre de archivo del "dump"
		$dumpvars;			// Directiva para "dumpear" variables
		// Mensaje que se imprime en consola una vez
		$display ("\t\t\tclk,\tout,\treset,\tselector,\tin0,\tin1");
		// Mensaje que se imprime en consola cada vez que un elemento de la lista cambia
		$monitor($time,"\t%b\t%b\t\t%b\t%b\t%b\t%b", clk, data_out_conductual2a1_4b, selector, reset_L, data_in02a1_4b, data_in12a1_4b,valid_data_out2a1_4b,valid_in0,valid_in1);
		{selector, reset_L} = 2'b0; // A los 2 bits, asigna un tipo bit con valor 0.
		{data_in02a1_4b,data_in12a1_4b} = 4'b0000;
		{valid_in0, valid_in1}=2'b0;
		repeat (1) begin		// Repite 2 veces
								// Es muy importante la notaci�n de sincronizar con @(posedge clk); y luego,
								// hacer una asignaci�n no bloqueante ( <= ), les va a ahorrar tiempo. 
        		@(posedge clk);	// Espera/sincroniza con el flanco positivo del reloj
				reset_L <= 1; 
        		selector <= 0; //asignaci�n no bloqueante 
		end

        @(posedge clk)
        data_in02a1_4b <= 4'b1111;
		data_in12a1_4b <= 4'b1010;
		valid_in0=1;
		valid_in1=1;
		
        @(posedge clk)
        data_in02a1_4b <= 4'b0101;
		data_in12a1_4b <= 4'b0000;
        selector <= 1;
		valid_in0=1;
		valid_in1=1;
        
        @(posedge clk)
        data_in02a1_4b <= 4'b0000;
		data_in12a1_4b <= 4'b1010;
		valid_in0=1;
		valid_in1=1;
        
        @(posedge clk)
        data_in02a1_4b <= 4'b1111;
		data_in12a1_4b <= 4'b1111;
        selector <= 0;
		valid_in0=1;
		valid_in1=1;
        
        @(posedge clk)
        data_in02a1_4b <= 4'b0000;
		data_in12a1_4b <= 4'b0101;
        selector <= 1;
		valid_in0=0;
		valid_in1=0;

        @(posedge clk)
        data_in02a1_4b <= 4'b1010;
		data_in12a1_4b <= 4'b0000;
        selector <= 0;
		valid_in0=0;
		valid_in1=0;

		@(posedge clk)
        selector <= 1;
		valid_in0=0;
		valid_in1=0;

		@(posedge clk)
        data_in02a1_4b <= 4'b1010;
		data_in12a1_4b <= 4'b0000;
        selector <= 1;
		valid_in0=1;
		valid_in1=1;

		$finish;			// Termina de almacenar se�ales
	end
	always @(posedge clk)begin
		if(data_out_conductual2a1_4b != data_out_sintetizado2a1_4b)begin
			$display("Diferencia modulo conductual y estructural");
		end
			
	end
	// Reloj
	initial	clk 	<= 0;			// Valor inicial al reloj, sino siempre ser� indeterminado
	always	#2 clk 	<= ~clk;		// Hace "toggle" cada 2*1ns
endmodule
