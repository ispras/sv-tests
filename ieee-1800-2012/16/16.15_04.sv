// IEEE Std 1800-2012
//   16. Assertions
//    16.15 Disable iff resolution

// ! TYPE: POSITIVE

module top(input logic a, b, clk, rst);

property p2;
  disable iff (rst) a |=> b;
endproperty

// Disable condition is 'rst' - explicitly specified within 'a5'
a5 : assert property (@(posedge clk) disable iff (rst) a |=> b);

// Disable condition is 'rst' - explicitly specified within 'p2'
a6 : assert property (@ (posedge clk) p2);

// No disable condition
a7 : assert property (@ (posedge clk) a |=> b);
endmodule
