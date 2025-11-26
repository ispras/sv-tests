// IEEE Std 1364-2005
//   19. Compiler directives
//     19.4 `ifdef, `else, `elsif, `endif, `ifndef
//       Example 1 — The example below shows a simple usage of an `ifdef directive for conditional
//       compilation. If the identifier  behavioral is defined, a continuous net assignment will be
//       compiled in; otherwise, an and gate will be instantiated.

// ! TYPE: POSITIVE

module and_op(a, b, c);

  output a;
  input b, c;

  `ifdef behavioral
    wire a = b & c;
  `else
    and a1(a, b, c);
  `endif
endmodule
