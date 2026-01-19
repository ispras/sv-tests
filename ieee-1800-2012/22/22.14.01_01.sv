// IEEE Std 1800-2012
//   22. Compiler directives
//    22.14 `begin_keywords, `end_keywords
//     22.14.1 Examples

// ! TYPE: POSITIVE

`begin_keywords "1364-2001" // use IEEE Std 1364-2001 Verilog keywords
module top;
  reg [63:0] logic; // OK: 'logic' is not a keyword in 1364-2001
endmodule
`end_keywords
