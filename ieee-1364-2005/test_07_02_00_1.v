// IEEE Std 1364-2005
//   7. Gate- and switch-level modeling
//     7.2 and, nand, nor, or, xor, and xnor gates
//       The following example declares a two-input and gate.

// ! TYPE: POSITIVE

module test(in1, in2, out1);

  input in1, in2;
  output out1;
  and a1(out, in1, in2);
endmodule
