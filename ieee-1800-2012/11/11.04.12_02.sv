// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.4 Operator descriptions
//     11.4.12 Concatenation operators

// ! TYPE: POSITIVE

module top;

  byte a, b ;
  bit [1:0] c ;

  initial c = {a + b}[1:0]; // 2 lsb's of sum of 'a' and 'b'

endmodule
