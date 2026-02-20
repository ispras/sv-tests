// IEEE Std 1800-2012
//   6. Data types
//    6.7 Net declarations
//     6.7.1 Net declarations with built-in net types

// ! TYPE: VARYING

module top;
  interconnect w1; // legal
  interconnect [3:0] w2; // legal
  interconnect [3:0] w3 [1:0]; // legal
`ifdef NEGATIVE_TEST
  interconnect logic [3:0] w4; // illegal – data type specified
  interconnect #(1, 2, 3) w5; // illegal – only one delay permitted
  assign w1 = 1; // illegal – not allowed in a continuous assign
  initial $display(w1); // illegal – not allowed in a procedural context
`endif
endmodule
