// IEEE Std 1800-2012
//   28. Gate-level and switch-level modeling
//    28.5 buf and not gates

// ! TYPE: POSITIVE

module top(input in, output out1, out2);
  buf b1(out1, out2, in);
  not n2(out1, out2, in);
endmodule
