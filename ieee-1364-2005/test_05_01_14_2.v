// IEEE Std 1364-2005
//   5. Expressions
//    5.1 Operators
//      5.1.14 Concatenations
//        Example 2

// ! TYPE: VARYING

module test;

  reg a;
  reg b;
  reg w;
  reg [6:0] result;

  initial begin
    // This example replicates w four times.
    result[3:0] = {4{w}};    // This yields the same value as {w, w, w, w}

`ifdef NEGATIVE_TEST
    // The following examples show illegal replications:
    result = {1'bz{1'b0}};   // illegal
    result = {1'bx{1'b0}};   // illegal
`endif

    // The next example illustrates a replication nested within a concatenation:
    result = {b, {3{a, b}}}; // This yields the same value as
                             // {b, a, b, a, b, a, b}
  end
endmodule
