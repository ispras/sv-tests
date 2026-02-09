// IEEE Std 1800-2012
//   28. Gate-level and switch-level modeling
//    28.3 Gate and switch declaration syntax
//     28.3.6 Primitive instance connection list

// ! TYPE: POSITIVE

module top(input in1, in2, output out1);
  nand #2 nand_array[1:4] (out1, in1, in2);
endmodule
