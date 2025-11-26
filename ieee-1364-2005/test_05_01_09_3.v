// IEEE Std 1364-2005
//   5. Expressions
//    5.1 Operators
//      5.1.9 Logical operators
//        Example 3

// ! TYPE: POSITIVE

module test;

  reg inword;

  initial begin
    // A common use of ! is in constructions like the following:
    if (!inword);
    // In some cases, the preceding construct makes more sense to someone reading the code than this
    // equivalent construct:
    if (inword == 0);
  end
endmodule
