module probador#(
                    parameter BUS_SIZE = 16,
                    parameter WORD_SIZE = 4,
                    parameter WORD_NUM = BUS_SIZE/WORD_SIZE
                    )
    (
    input error,
    input proximo_error,
    input [3:0] estado_presente,
    input [3:0] proximo_estado,
    input [BUS_SIZE-1:0] data_out,
    input [WORD_NUM-1:0] control,
    input error__sintetizado,
    input proximo_error_sintetizado,
    input [3:0] estado_presente_sintetizado,
    input [3:0] proximo_estado_sintetizado,
    input [BUS_SIZE-1:0] data_out_sintetizado,
    input [WORD_NUM-1:0] control_sintetizado,
    output reg reset,
    output reg clk,
    output reg [BUS_SIZE-1:0] data_in
    );

  initial begin

    $dumpfile("probador.vcd");
    $dumpvars();
    reset <= 0;
    data_in <= 0;
    @(posedge clk);
    reset <= 0;
    @(posedge clk);
    reset <= 1;
    data_in <= 'hFAA0;
    @(posedge clk);
    data_in <= 'hF9B1;
    @(posedge clk);
    data_in <= 'hFBF2;
    @(posedge clk);
    data_in <= 'hFFF3;
    @(posedge clk);
    data_in <= 'hFDF0;
    @(posedge clk);
    data_in <= 'hFFF9;
    @(posedge clk);
    data_in <= 'hFFF0;
    @(posedge clk);
    data_in <= 'hF9F1;
    @(posedge clk);
    data_in <= 'hFFF2;
    @(posedge clk);
    data_in <= 'hAFF3;
    @(posedge clk);
    data_in <= 'hFFF3;
    @(posedge clk);
    @(posedge clk);
    $finish;

  end

  initial clk <= 0;
  always #1 clk <= ~clk;
endmodule