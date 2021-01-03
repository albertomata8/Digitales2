`timescale 1ns/100ps

module floop_tarea34(
    input [1:0] D,
    input clk,
    output reg [1:0] Q);

    always  @(posedge clk) begin
          Q<=D;

    end

endmodule