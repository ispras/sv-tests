// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.7 Procedural timing controls
//       9.7.4 Event or operator
//         Nets and variables that appear on the right-hand side of assignments, in function and
//         task calls, in case and conditional expressions, as an index variable on the left-hand
//         side of assignments, or as variables in case item expressions shall all be included by
//         these rules.

// ! TYPE: POSITIVE

module test(a, b, c, d);

  input a, b, c, d;
  reg tmp1, tmp2, y;

  always @* begin // equivalent to @(a or b or c or d or tmp1 or tmp2)
    tmp1 = a & b;
    tmp2 = c & d;
    y = tmp1 | tmp2;
  end
endmodule
