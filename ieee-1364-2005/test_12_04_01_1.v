// IEEE Std 1364-2005
//   12. Hierarchical structures
//     12.4 Generate constructs
//       12.4.1 Loop generate constructs
//         Examples of legal and illegal generate loops.

// ! TYPE: VARYING

module mod_a;

  genvar i;

  // "generate", "endgenerate" keywords are not required
  for (i = 0; i < 5; i = i + 1) begin : a

`ifdef NEGATIVE_TEST
    for (i = 0; i < 5; i = i + 1) begin : b
    ... // error -- using "i" as loop index for
    ... // two nested generate loops
    end
`endif

  end
endmodule

module mod_b;

  genvar i;
  reg a;

`ifdef NEGATIVE_TEST
  for (i = 1; i < 0; i = i + 1) begin : a
    // error -- "a" conflicts with name of reg "a"
  end
`endif
endmodule

module mod_c;

  genvar i;

  for (i = 1; i < 5; i = i + 1) begin : a
  // some code
  end

`ifdef NEGATIVE_TEST
  for (i = 10; i < 15; i = i + 1) begin : a
    // error -- "a" conflicts with name of previous
    // loop even though indices are unique
  end
`endif
endmodule
