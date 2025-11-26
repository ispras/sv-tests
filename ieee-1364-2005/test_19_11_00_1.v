// IEEE Std 1364-2005
//   19. Compiler directives
//     19.11 `begin_keywords, `end_keywords
//       The following example specifies a `begin_keywords "1364-2001" directive. The source code
//       within the module uses the identifier uwire as a net name. The `begin_keywords directive
//       would be necessary in this example if an implementation uses IEEE Std 1364-2005 as its
//       default set of keywords because uwire is a reserved keyword in this standard. Specifying
//       that the "1364-1995" Verilog keyword lists should be used would also work with this
//       example.

// ! TYPE: POSITIVE

`begin_keywords "1364-2001" // use IEEE Std 1364-2001 Verilog keywords
module m2;
  wire [63:0] uwire; // OK: "uwire" is not a keyword in 1364-2001
 // ...
endmodule
`end_keywords
