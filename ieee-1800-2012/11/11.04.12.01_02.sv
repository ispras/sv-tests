// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.4 Operator descriptions
//     11.4.12 Concatenation operators
//      11.4.12.1 Replication operator

// ! TYPE: VARYING

module top;

  parameter P = 32;
  logic [64:0] a, b, c;

  // The following is legal for all 'P' from 1 to 32
  assign b[31:0] = { {32 - P{1'b1}}, a[P - 1 : 0] } ;

`ifdef NEGATIVE_TEST
  // The following is illegal for 'P = 32' because the zero
  // replication appears alone within a concatenation
  assign c[31:0] = {{{32 - P{1'b1}}}, a[P - 1 : 0] }

  // The following is illegal for 'P = 32'
  initial $displayb({32 - P{1'b1}}, a[P - 1 : 0]);
`endif

endmodule
