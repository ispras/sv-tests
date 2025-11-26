// IEEE Std 1364-2005
//   7. Gate- and switch-level modeling
//     7.3 buf and not gates
//       The following example declares a two-output buf. The input is in. The outputs are out1
//       and out2. The instance name is b1.

// ! TYPE: POSITIVE

module test(in, out1, out2);

  input in;
  output out1, out2;
  buf b1(out1, out2, in);
endmodule
