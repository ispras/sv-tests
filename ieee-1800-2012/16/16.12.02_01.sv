// IEEE Std 1800-2012
//   16. Assertions
//    16.12 Declaring properties
//     16.12.2 Negation property

// ! TYPE: POSITIVE

module top;

  reg clk, a, b;

  a1: assert property (@clk not a ##1 b);

  a2: assert property (@clk not strong(a ##1 b));

endmodule
