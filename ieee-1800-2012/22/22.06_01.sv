// IEEE Std 1800-2012
//   22. Compiler directives
//    22.6 `ifdef, `else, `elsif, `endif, `ifndef

// ! TYPE: POSITIVE

module top(a, b, c);

  output a;
  input b, c;

  `ifdef behavioral
    wire a = b & c;
  `else
    and a1 (a, b, c);
  `endif

endmodule
