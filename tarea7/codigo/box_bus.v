`include "box_word.v"

module box_bus(
        input reset,
        input clk,
        input [BUS_SIZE-1:0] data_in,
        output [BUS_SIZE-1:0] data_out,
        output [WORD_NUM-1:0] control
    );
    parameter BUS_SIZE = 16;
    parameter WORD_SIZE = 4;
    parameter WORD_NUM = BUS_SIZE/WORD_SIZE;
    genvar i;
    generate
        for (i=0;i<WORD_NUM; i=i+1) begin : MEM
            box_word #(
                .BUS_SIZE(BUS_SIZE),
                .WORD_SIZE(WORD_SIZE)
            ) bloque (
                .reset(reset),
                .clk(clk),
                .data_in(data_in[(i*WORD_SIZE)+:WORD_SIZE]),
                .data_out(data_out[(WORD_NUM-1-i)*(WORD_SIZE)+:WORD_SIZE]),
                .control(control[(WORD_NUM-1-i)+:1])
            );
        end
    endgenerate
    
endmodule