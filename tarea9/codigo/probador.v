module probador(
    output reg [3:0] dataA,
    output reg [3:0] dataB,
    output reg [3:0] idx,
    output reg clk,
    //output reg clk_2f,
    output reg reset_L,
    input [3:0] sum30_dd,
    input [3:0] idx_dd,
    input [3:0] sum30_dd_synth,
    input [3:0] idx_dd_synth
    );
  initial begin

    $dumpfile("probador.vcd");
    $dumpvars();
    reset_L <= 0;
    dataA <= 'h4;
    dataB <= 'h3;
    idx <= 'b1111;
    @(posedge clk);
    reset_L <= 1;
    idx <= 'b1101;
    dataA <= 'b0111;
    dataB <= 'b0011;
    @(posedge clk);
    idx <= $random;
    dataA <= 'hD;
    dataB <= 'h1;
    @(posedge clk);
    idx <= $random;
    dataA <= 'h3;
    dataB <= 'h2;
     @(posedge clk);
    idx <= $random;
    dataA <= 'h2;
    dataB <= 'h9;
    repeat (10) begin
        @(posedge clk);
        idx <= $random;
        //dataA <= $random;
        //dataB <= $random;
    end   
    $finish;

  end

  initial clk <= 0;
  always #1 clk <= ~clk;
 // initial clk_2f <= 1;
	//always #1 clk_2f <= ~clk_2f;

endmodule