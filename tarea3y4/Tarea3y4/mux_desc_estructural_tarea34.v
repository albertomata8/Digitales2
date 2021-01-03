`include "mux2bit_tarea34.v"
`include "floop_tarea34.v"

module mux_desc_estructural_tarea34(
    output [1:0] data_out,
    input clk,
	input reset_L,
	input selector,
    input [1:0] tierra,
	input [1:0] data_in0,
	input [1:0] data_in1);

    wire [1:0] mux1_a_mux2;
    wire [1:0] mux2_a_floop;
    // Conexiones
    mux2bit_tarea34 mux1(.A (data_in0), .B(data_in1), .selector(selector), .salida(mux1_a_mux2));
    mux2bit_tarea34 mux2(.A (tierra), .B(mux1_a_mux2), .selector(reset_L), .salida(mux2_a_floop));
    floop_tarea34 floop(.D(mux2_a_floop), .clk(clk), .Q(data_out));
    
endmodule