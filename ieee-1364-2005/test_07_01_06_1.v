// IEEE Std 1364-2005
//   7. Gate- and switch-level modeling
//     7.1 Gate and switch declaration syntax
//       7.1.6 Primitive instance connection list
//         The following declaration of nand_array declares four instances that can be referenced by
//           nand_array[1], nand_array[2], nand_array[3], and nand_array[4], respectively.

// ! TYPE: POSITIVE

module test(in1, in2, out1);

  input in1, in2;
  output out1;
  nand #2 nand_array[1:4](out1, in1, in2);
endmodule
