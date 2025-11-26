// IEEE Std 1364-2005
//   5. Expressions
//    5.1 Operators
//      5.1.8 Equality operators
//        Table 5-11 - Definitions of equality operators

// ! TYPE: POSITIVE

module test;

  integer a, b, c;

  initial begin
    c = a === b; // a equal to b, including x and z
    c = a !== b; // a not equal to b, including x and z
    c = a == b;  // a equal to b, result can be unknown
    c = a != b;  // a not equal to b, result can be unknown
  end
endmodule
