// IEEE Std 1364-2005
//   3. Lexical conventions
//    3.5 Numbers
//      3.5.1 Integer constants
//        Example 1 - Unsized constant numbers

// ! TYPE: VARYING

module test;
  parameter p00 = 659;      // is a decimal number
  parameter p01 = 'h 837FF; // is a hexadecimal number
  parameter p02 = 'o07460;  // is an octal number

`ifdef NEGATIVE_TEST
  parameter p03 = 4af;      // is illegal (hexadecimal formal requires 'h)
`endif
endmodule
