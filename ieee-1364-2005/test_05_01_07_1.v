// IEEE Std 1364-2005
//   5. Expressions
//    5.1 Operators
//      5.1.7 Relational operators
//        Table 5-10 - Definitions of relational operators

// ! TYPE: POSITIVE

module test;

  integer a, b, c;

  initial begin
    c = a < b;  // a less than b
    c = a > b;  // a greater than b
    c = a <= b; // a less than or equal to b
    c = a >= b; // a greater than or equal to b
  end
endmodule
