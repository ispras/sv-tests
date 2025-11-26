// IEEE Std 1364-2005
//   3. Lexical conventions
//    3.7 Identifiers
//      3.7.4 Compiler directives

// ! TYPE: POSITIVE

`define wordsize 8

module test;
  parameter p00 = `wordsize;
endmodule
