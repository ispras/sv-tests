// IEEE Std 1364-2005
//   6. Expressions
//     6.2 Procedural assignments
//       6.2.1 Variable declaration assignment
//         The following example is not legal

// ! TYPE: VARYING

module test;

`ifdef NEGATIVE_TEST
  reg [3:0] array [3:0] = 0;
`endif

endmodule
