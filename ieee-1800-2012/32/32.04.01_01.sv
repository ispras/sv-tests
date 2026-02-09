// IEEE Std 1800-2012
//   32. Backannotation using the standard delay format
//    32.4 Mapping of SDF constructs to SystemVerilog
//     32.4.1 Mapping of SDF delay constructs to SystemVerilog declarations

// ! TYPE: POSITIVE

module dut(input sel, output zout);
  assign zout = sel;
  specify
    (sel => zout) = 0;
  endspecify
endmodule

module top;
  reg sel;
  wire zout;

  dut u_dut(.sel(sel), .zout(zout));

  initial begin
    $sdf_annotate("ieee-1800-2012/32/32.04.01_01.sdf");
    sel = 1'b0;
    #1 sel = 1'b1;
    #1 sel = 1'b0;
    #1 $finish;
  end
endmodule
