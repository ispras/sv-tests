// IEEE Std 1364-2005
//   5. Expressions
//    5.1 Operators
//      5.1.5 Arithmetic operators
//        Table 5-5 - Arithmetic operators defined

// ! TYPE: POSITIVE

module test;

  integer a, b, c;

  initial begin
    c = a + b;  // a plus b
    c = a - b;  // a minus b
    c = a * b;  // a multiplied by b (or a times b)
    c = a / b;  // a divided by b
    c = a % b;  // a modulo b
    c = a ** b; // a to the power of b
  end
endmodule
