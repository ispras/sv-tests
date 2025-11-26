// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.4 Conditional statement
//       Because the numeric value of the if expression is tested for being zero, certain
//       shortcuts are possible. For example, the following two statements express the same logic.

// ! TYPE: POSITIVE

module test(expression);

  input expression;
  reg a;

  initial begin
    if (expression != 0)
      a = 1;
    if (expression)
      a = 0;
  end
endmodule
