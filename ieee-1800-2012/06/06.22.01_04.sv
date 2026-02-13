// IEEE Std 1800-2012
//   6. Data types
//    6.22 Type compatibility
//     6.22.1 Matching types

// ! TYPE: POSITIVE

module top;
  typedef bit signed [7:0] BYTE; // matches the byte type
  typedef bit signed [0:7] ETYB; // does not match the byte type
endmodule
