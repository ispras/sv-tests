// IEEE Std 1800-2012
//   32. Backannotation using the standard delay format
//    32.4 Mapping of SDF constructs to SystemVerilog
//     32.4.1 Mapping of SDF delay constructs to SystemVerilog declarations

// ! TYPE: POSITIVE

module dut(input sel, mode, output zout);
  assign zout = sel;
  specify
    if (!mode) (sel => zout) = 0;
    if (mode) (sel => zout) = 0;
  endspecify
endmodule

module top;
  reg sel, mode;
  wire zout;

  dut u_dut(.sel(sel), .mode(mode), .zout(zout));

  initial begin
    $sdf_annotate("ieee-1800-2012/32/32.04.01_03.sdf");
    sel = 1'b0;
    mode = 1'b0;
    #1 sel = 1'b1;
    #1 mode = 1'b1;
    #1 sel = 1'b0;
    #1 $finish;
  end
endmodule
