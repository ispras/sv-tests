// IEEE Std 1800-2012
//   16. Assertions
//    16.10 Local variables

// ! TYPE: POSITIVE

module top;

reg a, b;

sequence s;
  logic u, v = a, w = v || b;
  w ##1 v;
endsequence

endmodule
