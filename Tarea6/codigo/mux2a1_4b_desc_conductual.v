`include "mux2a1_2b_desc_conductual.v"
module mux2a1_4b_desc_conductual (
	input clk,
	input reset_L,
	input selector,
	input valid_in0,
	input valid_in1, 
	input [3:0] data_in02a1_4b,
	input [3:0] data_in12a1_4b,
	output [3:0] data_out_conductual2a1_4b,
	output valid_data_out2a1_4b);	
    // conexiones
    mux2a1_2b_desc_conductual mux2a1_2b_a(.data_in02a1_2b (data_in02a1_4b[1:0]), .data_in12a1_2b (data_in12a1_4b[1:0]), .data_out_conductual2a1_2b (data_out_conductual2a1_4b[1:0]) , .valid_data_out2a1_2b (valid_data_out2a1_4b), .clk (clk), .reset_L (reset_L), .selector (selector), .valid_in0 (valid_in0), .valid_in1 (valid_in1));

    mux2a1_2b_desc_conductual mux2a1_2b_b(.data_in02a1_2b (data_in02a1_4b[3:2]), .data_in12a1_2b (data_in12a1_4b[3:2]), .data_out_conductual2a1_2b (data_out_conductual2a1_4b[3:2]) , .valid_data_out2a1_2b (valid_data_out2a1_4b), .clk (clk), .reset_L (reset_L), .selector (selector), .valid_in0 (valid_in0), .valid_in1 (valid_in1));

endmodule

