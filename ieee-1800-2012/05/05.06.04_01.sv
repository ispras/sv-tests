// IEEE Std 1800-2012
//   5. Lexical conventions
//    5.6 Identifiers, keywords, and system names
//     5.6.4 Compiler directives

// ! TYPE: POSITIVE

`define wordsize

module top;
  initial begin
    `ifdef wordsize
      $display("`wordsize is defined (even if empty).");
    `else
      $display("`wordsize is not defined.");
    `endif
   end
endmodule