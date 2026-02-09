// IEEE Std 1800-2012
//   32. Backannotation using the standard delay format
//    32.4 Mapping of SDF constructs to SystemVerilog
//     32.4.3 SDF annotation of specparams

// ! TYPE: POSITIVE

module clock(output reg clk);
  specparam dhigh = 0, dlow = 0;
  initial clk = 1'b0;
  always begin
    #dhigh clk = 1'b1;
    #dlow clk = 1'b0;
  end
endmodule

module top;
  wire clk;

  clock u_clk(.clk(clk));

  initial begin
    $sdf_annotate("ieee-1800-2012/32/32.04.03_01.sdf");
    #1 $finish;
  end
endmodule
