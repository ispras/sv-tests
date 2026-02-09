// IEEE Std 1800-2012
//   28. Gate-level and switch-level modeling
//    28.3 Gate and switch declaration syntax
//     28.3.2 The drive strength specification

// ! TYPE: POSITIVE

module top(input in1, in2, output out1);
  nor (highz1, strong0) n1(out1, in1, in2);
endmodule
