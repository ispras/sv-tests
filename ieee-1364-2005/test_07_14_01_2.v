// IEEE Std 1364-2005
//   7. Gate- and switch-level modeling
//     7.14.1 min:typ:max delays
//       The following example shows min:typ:max values for rising, falling, and turn-off delays.

// ! TYPE: POSITIVE

module test;

  parameter min_hi = 97, typ_hi = 100, max_hi = 107;

  reg clk;

  always begin
    #(95:100:105) clk = 1;
    #(min_hi:typ_hi:max_hi) clk = 0;
  end
endmodule
