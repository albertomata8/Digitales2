module mux_desc_conductualTarea2 (
	input clk,
	input reset_L,
	input selector,
	input [1:0] data_in0,
	input [1:0] data_in1,
	output reg [1:0] data_out
	);	

	always @(posedge clk) begin
		if (reset_L != 0)begin
	        if (selector == 0)
            	data_out <= data_in0;  
			else 
				data_out <= data_in1; 
    	end
      	else
		  data_out <= 2'b00;  

    end

endmodule

