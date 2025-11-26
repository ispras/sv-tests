// IEEE Std 1364-2005
//   7. Gate- and switch-level modeling
//     7.1 Gate and switch declaration syntax
//       7.1.2 The drive strength specification
//         The following example shows a drive strength specification in a declaration of
//         an open collector nor gate

// ! TYPE: POSITIVE

module test(in1, in2, out1);

  input in1, in2;
  output out1;
  nor (highz1,strong0) n1(out1, in1, in2);
endmodule
