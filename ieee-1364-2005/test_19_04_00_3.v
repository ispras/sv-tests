// IEEE Std 1364-2005
//   19. Compiler directives
//     19.4 `ifdef, `else, `elsif, `endif, `ifndef
//       Example 3 — The following example shows usage of chained nested conditional compilation
//       directives.

// ! TYPE: POSITIVE

module test;
  `ifdef first_block
    `ifndef second_nest
      initial $display("first_block is defined");
    `else
      initial $display("first_block and second_nest defined");
    `endif
  `elsif second_block
    initial $display("second_block defined, first_block is not");
  `else
    `ifndef last_result
      initial $display("first_block, second_block, last_result not defined.");
    `elsif real_last
      initial $display("first_block, second_block not defined, last_result and real_last defined.");
    `else
      initial $display("Only last_result defined!");
    `endif
  `endif
endmodule
