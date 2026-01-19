// IEEE Std 1800-2012
//   27. Generate constructs
//    27.4 Loop generate constructs

// ! TYPE: VARYING

module mod_a;
  genvar i;

  // 'generate', 'endgenerate' keywords are not required
  for (i = 0; i < 5; i = i + 1) begin: a
`ifdef NEGATIVE_TEST
    for (i = 0; i < 5; i = i + 1) begin: b
      // error -- using 'i' as loop index for
      // two nested generate loops
    end
`endif
  end
endmodule

module mod_b;
  genvar i;
  logic a;
`ifdef NEGATIVE_TEST
  for (i = 1; i < 0; i = i + 1) begin: a
    // error -- 'a' conflicts with name of variable 'a'
  end
`endif
endmodule

module mod_c;
  genvar i;
  for (i = 1; i < 5; i = i + 1) begin: a
  end
`ifdef NEGATIVE_TEST
  for (i = 10; i < 15; i = i + 1) begin: a
    // error -- 'a' conflicts with name of previous
  end
`endif
endmodule

module top;
  mod_a a();
  mod_b b();
  mod_c c();
endmodule
