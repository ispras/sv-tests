// IEEE Std 1800-2012
//   28. Gate-level and switch-level modeling
//    28.4 and, nand, nor, or, xor, and xnor gates

// ! TYPE: POSITIVE

module top(input in1, in2, output out);
  and a1(out, in1, in2);
  nand n2(out, in1, in2);
  nor n3(out, in1, in2);
  or o4(out, in1, in2);
  xor x5(out, in1, in2);
  xnor x6(out, in1, in2);
endmodule
