// IEEE Std 1800-2012
//   20. Utility system tasks and system functions
//    20.8 Math functions
//     20.8.1 Integer math functions

// ! TYPE: POSITIVE

module top;

  parameter n = 1;
  integer result;
  initial result = $clog2(n);

endmodule
