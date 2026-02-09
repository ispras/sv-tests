// IEEE Std 1800-2012
//   28. Gate-level and switch-level modeling
//    28.12 Strengths and values of combined signals
//     28.12.2 Ambiguous strengths: sources and combinations

// ! TYPE: POSITIVE

module top(input b, d, inout a, c);
  and (strong1, highz0) N1(a, b);
  and (strong1, weak0) N2(c, d);
endmodule
