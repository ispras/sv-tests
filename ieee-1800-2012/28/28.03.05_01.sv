// IEEE Std 1800-2012
//   28. Gate-level and switch-level modeling
//    28.3 Gate and switch declaration syntax
//     28.3.5 The range specification

// ! TYPE: VARYING

module top(input in1, in2, output out1);
`ifdef NEGATIVE_TEST
  nand #2 t_nand[0:3] (out1, in1, in2), t_nand[4:7] (out1, in1, in2);
`else
  nand #2 t_nand[0:7] (out1, in1, in2);
`endif
  nand #2 x_nand[0:3] (out1, in1, in2), y_nand[4:7] (out1, in1, in2);
endmodule
