// IEEE Std 1364-2005
//   3. Lexical conventions
//    3.8 Attributes
//      3.8.1 Examples
//        Example 6

// ! TYPE: POSITIVE

module test;

  reg a, b, c;

  initial begin
    a = b + (* mode = "cla" *) c;
  end
endmodule
