module mux2a1_2b_desc_conductual (
	input clk,
	input reset_L,
	input selector,
	input valid_in0,
	input valid_in1, 
	input [1:0] data_in02a1_2b,
	input [1:0] data_in12a1_2b,
	output reg [1:0] data_out_conductual2a1_2b,
	output reg  valid_data_out2a1_2b
	);	

	always @(posedge clk) begin
		if (valid_in0!=0 || valid_in1!=0)begin
			if (reset_L != 0)begin
	        	if (selector == 0 && valid_in0==1)
            		data_out_conductual2a1_2b <= data_in02a1_2b;  
				if (selector == 1 && valid_in1==1)
            		data_out_conductual2a1_2b <= data_in12a1_2b;
    		end

			else
		  		data_out_conductual2a1_2b <= 2'b00;  
			
		end

		if ((selector == 0 && valid_in0 != 0) || (selector == 1 && valid_in1 != 0))
			valid_data_out2a1_2b <= 1;
		
		else
			valid_data_out2a1_2b <= 0;


    end

endmodule

