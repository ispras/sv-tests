// IEEE Std 1800-2012
//   6. Data types
//    6.22 Type compatibility
//     6.22.2 Equivalent types

// ! TYPE: POSITIVE

module top;
  typedef bit signed [7:0] BYTE; // equivalent to the byte type
  typedef struct packed signed {bit[3:0] a, b;} uint8; // equivalent to the byte type
endmodule
