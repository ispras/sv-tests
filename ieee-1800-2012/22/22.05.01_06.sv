// IEEE Std 1800-2012
//   22. Compiler directives
//    22.5 `define, `undef, and `undefineall
//     22.5.1 `define

// ! TYPE: POSITIVE

module top;

  int a, b, result;
  `define TOP(a, b) (a + b)

  initial begin
    result = `TOP(`TOP(b, 1), `TOP(42, a));
  end

endmodule
