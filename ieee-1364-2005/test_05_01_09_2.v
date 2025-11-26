// IEEE Std 1364-2005
//   5. Expressions
//    5.1 Operators
//      5.1.9 Logical operators
//        Example 2

// ! TYPE: POSITIVE

module test;

  integer result, a, b, c, size, index, lastone;

  initial begin
    // The following expression performs a logical and of three subexpressions without needing any
    // parentheses:
    result = a < size-1 && b != c && index != lastone;
    // However, it is recommended for readability purposes that parentheses be used to show very
    // clearly the precedence intended, as in the following rewrite of this example:
    result = (a < size-1) && (b != c) && (index != lastone);
  end
endmodule
