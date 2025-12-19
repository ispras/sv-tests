// IEEE Std 1800-2012
//   20. Utility system tasks and system functions
//    20.7 Array querying functions

// ! TYPE: POSITIVE

module top;

  //       Dimension numbers
  //      3    4       1    2
  logic [3:0][2:1] n1 [1:5][2:8];
  typedef logic [3:0][2:1] packed_reg;
  packed_reg n2 [1:5][2:8]; // same dimensions as in the lines above

endmodule
