// IEEE Std 1800-2012
//   22. Compiler directives
//    22.5 `define, `undef, and `undefineall
//     22.5.1 `define

// ! TYPE: VARYING

module top;

  `define first_half "start of string $display(`first_half end of string");

endmodule
