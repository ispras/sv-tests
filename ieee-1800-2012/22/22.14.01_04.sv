// IEEE Std 1800-2012
//   22. Compiler directives
//    22.14 `begin_keywords, `end_keywords
//     22.14.1 Examples

// ! TYPE: NEGATIVE

`begin_keywords "1364-2005" // use IEEE Std 1364-2005 Verilog keywords
module top;
  interface if2; // ERROR: 'interface' is not a keyword in 1364-2005
  endinterface // ERROR: 'endinterface' is not a keyword in 1364-2005
endmodule
`end_keywords
