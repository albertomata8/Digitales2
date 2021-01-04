`include "mux2a1_4b_desc_conductual.v"
module mux4a1_4b_desc_conductual (
	input clk,
	input reset_L,
	input valid_in0,
	input valid_in1,
    input valid_in2,
	input valid_in3,
    input [2:0]selector,
	input [3:0] data_in04a1_4b,
	input [3:0] data_in14a1_4b,
    input [3:0] data_in24a1_4b,
	input [3:0] data_in34a1_4b,
	output [3:0] data_out_conductual4a1_4b,
	output valid_data_out4a1_4b);

    wire [3:0] mux2a1_4b_atoc;
    wire [3:0] mux2a1_4b_btoc;
    wire     valid_out_atoc;
    wire     valid_out_btoc;


    // conexiones
    mux2a1_4b_desc_conductual mux2a1_4b_a(.data_in02a1_4b (data_in04a1_4b[3:0]), .data_in12a1_4b (data_in14a1_4b[3:0]) , .clk (clk), .reset_L (reset_L), .selector (selector[0]), .valid_in0 (valid_in0), .valid_in1 (valid_in1), .data_out_conductual2a1_4b(mux2a1_4b_atoc[3:0]), .valid_data_out2a1_4b(valid_out_atoc));

    mux2a1_4b_desc_conductual mux2a1_2b_b(.data_in02a1_4b (data_in24a1_4b[3:0]), .data_in12a1_4b (data_in34a1_4b[3:0]), .clk (clk), .reset_L (reset_L), .selector (selector[1]), .valid_in0 (valid_in2), .valid_in1 (valid_in3), .data_out_conductual2a1_4b(mux2a1_4b_btoc[3:0]), .valid_data_out2a1_4b(valid_out_btoc));

    mux2a1_4b_desc_conductual mux2a1_2b_c(.data_in02a1_4b (mux2a1_4b_atoc), .data_in12a1_4b (mux2a1_4b_btoc), .data_out_conductual2a1_4b (data_out_conductual4a1_4b[3:0]) , .valid_data_out2a1_4b (valid_data_out4a1_4b), .clk (clk), .reset_L (reset_L), .selector (selector[2]), .valid_in0 (valid_out_atoc), .valid_in1 (valid_out_btoc));

endmodule

