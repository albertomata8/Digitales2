module box_word(
        input reset,
        input clk,
        input [WORD_SIZE-1:0]data_in,
        output reg [WORD_SIZE-1:0]data_out, 
        output reg control 
    );
    parameter BUS_SIZE=16;
    parameter WORD_SIZE=4;
    integer i = 0;

    always @(posedge clk)begin
        if (!reset) begin
            data_out <= 0;
            control  <= 0;
        end 
        else begin
            data_out <= data_in;
            control  <= 0;
            for (i = 0; i < WORD_SIZE; i = i + 1) begin
                control <= control | data_in [i];
            end
            control <= data_in[0] | data_in [1] | data_in [2] | data_in [WORD_SIZE-1];
        end
    end
endmodule
