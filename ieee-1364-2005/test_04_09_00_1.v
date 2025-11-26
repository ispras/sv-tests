// IEEE Std 1364-2005
//   4. Data types
//    4.9 Arrays

// ! TYPE: POSITIVE

module test;
  reg x[11:0];          // scalar reg
  wire [0:7] y[5:0];    // 8-bit-wide vector wire indexed from 0 to 7
  reg [31:0] z [127:0]; // 32-bit-wide reg
endmodule
