// IEEE Std 1800-2012
//   6. Data types
//    6.19 Enumerations

// ! TYPE: VARYING

module top;
  // 'c' is automatically assigned the increment-value of 8
  enum {a = 3, b = 7, c} alphabet;

`ifdef NEGATIVE_TEST
  // Error: 'c' and 'd' are both assigned 8
  enum {a = 0, b = 7, c, d = 8} alphabet;
`endif
endmodule
