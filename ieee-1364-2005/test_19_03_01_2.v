// IEEE Std 1364-2005
//   19. Compiler directives
//     19.3 `define and `undef
//       19.3.1 `define
//         The following is illegal syntax because it is split across a string.

// ! TYPE: VARYING

module test;

`ifdef NEGATIVE_TEST
  `define first_half "start of string
  $display (`first_half end of string");
`endif

endmodule
