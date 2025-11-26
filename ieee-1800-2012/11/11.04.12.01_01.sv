// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.4 Operator descriptions
//     11.4.12 Concatenation operators
//      11.4.12.1 Replication operator

// ! TYPE: VARYING

module top;

  parameter w = 1;
  parameter a = 1, b = 1;

  // This example replicates 'w' four times.
  bit A1 = {4{w}}; // yields the same value as '{w, w, w, w}'

`ifdef NEGATIVE_TEST
  // The following examples show illegal replications:
  bit A2 = {1'bz{1'b0}}; // illegal
  bit A3 = {1'bx{1'b0}}; // illegal
`endif

  // The next example illustrates a replication nested within a concatenation:
  bit A4 = {b, {3{a, b}}}; // yields the same value as '{b, a, b, a, b, a, b}'

endmodule
