// IEEE Std 1364-2005
//   19. Compiler directives
//     19.11 `begin_keywords, `end_keywords
//       The next example is the same code as the previous example, except that it explicitly
//       specifies that the IEEE Std 1364-2005 Verilog keywords should be used. This example shall
//       result in an error because uwire is reserved as a keyword in this standard.

// ! TYPE: VARYING

`begin_keywords "1364-2005" // use IEEE Std 1364-2005 Verilog keywords
module m2;

`ifdef NEGATIVE_TEST
  wire [63:0] uwire; // ERROR: "uwire" is a keyword in 1364-2005
`endif
  // ...
endmodule
`end_keywords
