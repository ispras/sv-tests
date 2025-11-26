// IEEE Std 1364-2005
//   5. Expressions
//    5.1 Operators
//      5.1.7 Relational operators
//        Example 1

// ! TYPE: POSITIVE

module test;

  integer result, a, foo;

  initial begin
    result = a < foo - 1;   // this expression is the same as
    result = a < (foo - 1); // this expression, but . . .
    result = foo - (1 < a); // this one is not the same as
    result = foo - 1 < a;   // this expression
  end
endmodule
