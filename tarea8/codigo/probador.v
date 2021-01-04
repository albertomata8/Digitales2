module probador(
    input  [4:0]salida_gray,
    input  [4:0]salida_gray_no_error,
    output reg clk, 
    output reg reset_L,
    output reg enable
    );

  initial begin

    $dumpfile("probador.vcd");
    $dumpvars();
    reset_L <= 0;
    enable <= 0;
    @(posedge clk);
    reset_L <= 1;
    @(posedge clk);
    enable <= 1;
    repeat (100) begin
        @(posedge clk);
    end   
    $finish;

  end

  initial clk <= 0;
  always #1 clk <= ~clk;
endmodule