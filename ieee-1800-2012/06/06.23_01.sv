// IEEE Std 1800-2012
//   6. Data types
//    6.23 Type operator

// ! TYPE: POSITIVE

module top(input a, b);
  logic [31:0] i, v;

  var type(a + b) c, d;

  initial c = type(i + 3)'(v[15:0]);
endmodule
