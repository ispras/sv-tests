// IEEE Std 1800-2012
//   22. Compiler directives
//    22.14 `begin_keywords, `end_keywords
//     22.14.1 Examples

// ! TYPE: NEGATIVE

`begin_keywords "1800-2005" // use IEEE Std 1800-2005 SystemVerilog keywords
module top;
  reg [63:0] logic; // ERROR: 'logic' is a keyword in 1800-2005
endmodule
`end_keywords