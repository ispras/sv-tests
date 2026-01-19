// IEEE Std 1800-2012
//   22. Compiler directives
//    22.5 `define, `undef, and `undefineall
//     22.5.1 `define

// ! TYPE: VARYING

module top;

  `define MACRO1(a = 5,b = "B", c) initial $display(a, , b, , c);
  `MACRO1 (, 2, 3) // argument 'a' omitted, replaced by default
                   // expands to '$display(5, , 2, , 3);'
  `MACRO1 (1, , 3) // argument 'b' omitted, replaced by default
                   // expands to '$display(1, , "B", , 3);'
  `MACRO1 (, 2, ) // argument 'c' omitted, replaced by nothing
                  // expands to '$display(5, , 2, , );'
`ifdef NEGATIVE_TEST
  `MACRO1 (1) // ILLEGAL: 'b' and 'c' omitted, no default for 'c'
`endif

  `define MACRO2(a = 5, b, c = "C") initial $display(a, , b, , c);
  `MACRO2 (1, , 3) // argument 'b' omitted, replaced by nothing
                   // expands to '$display(1, , , , 3);'
  `MACRO2 (, 2, ) // 'a' and 'c' omitted, replaced by defaults
                  // expands to '$display(5, , 2, , "C");'
  `MACRO2 (, 2) // 'a' and 'c' omitted, replaced by defaults
                // expands to '$display(5, , 2, , "C");'

  `define MACRO3(a = 5, b = 0, c = "C") initial $display(a, , b, , c);
  `MACRO3 (1) // 'b' and 'c' omitted, replaced by defaults
              // expands to '$display(1, , 0, , "C");'
  `MACRO3 () // all arguments replaced by defaults
             // expands to '$display(5, , 0, , "C");'
`ifdef NEGATIVE_TEST
  `MACRO3 // ILLEGAL: parentheses required
`endif

endmodule
