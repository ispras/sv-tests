// IEEE Std 1800-2012
//   32. Backannotation using the standard delay format
//    32.4 Mapping of SDF constructs to SystemVerilog
//     32.4.2 Mapping of SDF timing check constructs to SystemVerilog

// ! TYPE: POSITIVE

module dut(input clk, data, mode);
  reg ntfr;
  wire nmode;
  assign nmode = ~mode;
  specify
    $setuphold(posedge clk &&& mode, data, 1, 1, ntfr);
    $setuphold(negedge clk &&& nmode, data, 1, 1, ntfr);
    $setuphold(edge clk, data, 1, 1, ntfr);
  endspecify
endmodule

module top;
  reg clk, data, mode;

  dut u_dut(.clk(clk), .data(data), .mode(mode));

  initial begin
    $sdf_annotate("ieee-1800-2012/32/32.04.02_02.sdf");
    clk = 1'b0;
    data = 1'b0;
    mode = 1'b0;
    #1 clk = 1'b1;
    #1 data = 1'b1;
    #1 mode = 1'b1;
    #1 $finish;
  end
endmodule
