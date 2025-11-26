// IEEE Std 1364-2005
//   3. Lexical conventions
//    3.5 Numbers
//      3.5.1 Integer constants
//        Example 5 - Using underscore character in numbers

// ! TYPE: POSITIVE

module test;
  parameter p00 = 27_195_000;
  parameter p01 = 16'b0011_0101_0001_1111;
  parameter p02 = 32 'h 12ab_f001;
endmodule
