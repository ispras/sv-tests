// IEEE Std 1800-2012
//   28. Gate-level and switch-level modeling
//    28.8 Bidirectional pass switches

// ! TYPE: POSITIVE

module top(inout inout1, inout2, control);
  tranif1 t1(inout1, inout2, control);
  tran t2(inout1, control);
  tranif0 t3(inout1, inout2, control);
  rtranif1 rt4(inout1, inout2, control);
  rtran rt5(inout1, control);
  rtranif0 rt6(inout1, inout2, control);
endmodule
