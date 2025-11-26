// IEEE Std 1364-2005
//   7. Gate- and switch-level modeling
//     7.1 Gate and switch declaration syntax
//       7.1.5 The range specification
//         An array of instances shall have a continuous range. One instance identifier shall be
//         associated with only one range to declare an array of instances.
//         The range specification shall be optional. If no range specification is given, a single
//         instance shall be created.

// ! TYPE: VARYING

module test(in1, in2, out1);
  input in1, in2;
  output out1;

`ifdef NEGATIVE_TEST
  nand  #2 t_nand[0:3](out1, in1, in2), t_nand[4:7](out1, in1, in2); // illegal
`endif

  nand  #2 t_nand[0:7](out1, in1, in2);
  nand  #2 x_nand[0:3](out1, in1, in2), y_nand[4:7](out1, in1, in2);
endmodule
