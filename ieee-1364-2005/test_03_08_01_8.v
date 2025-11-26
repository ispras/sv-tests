// IEEE Std 1364-2005
//   3. Lexical conventions
//    3.8 Attributes
//      3.8.1 Examples
//        Example 8

// ! TYPE: POSITIVE

module test;

  reg a, b, c, d;

  initial begin
    a = b ? (* no_glitch *) c : d;
  end
endmodule
