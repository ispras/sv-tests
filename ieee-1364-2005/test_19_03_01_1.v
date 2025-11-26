// IEEE Std 1364-2005
//   19. Compiler directives
//     19.3 `define and `undef
//       19.3.1 `define

// ! TYPE: POSITIVE

module test;

  `define wordsize 8
  reg [1:`wordsize] data;

  //define a nand with variable delay
  `define var_nand(dly) nand #dly
  `var_nand(2) g121(q21, n10, n11);
  `var_nand(5) g122(q22, n10, n11);

endmodule
