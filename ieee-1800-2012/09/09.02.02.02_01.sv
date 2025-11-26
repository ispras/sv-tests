// IEEE Std 1800-2012
//   9. Processes
//    9.2 Structured procedures
//     9.2.2 Always procedures
//      9.2.2.2 Combinational logic always_comb procedure

// ! TYPE: POSITIVE

module top;

  reg a, b, c, d;

  always_comb
    a = b & c;
  always_comb
    d <= #1ns b & c;

endmodule
