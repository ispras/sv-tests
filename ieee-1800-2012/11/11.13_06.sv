// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.13 Let construct

// ! TYPE: VARYING

module top;

  wire a, b;
  wire [2:0] c;
  wire [2:0] d;
  wire e;

  for (genvar i = 0; i < 3; i++) begin : L0
    if (i != 1) begin : L1
      let my_let(x) = !x || b && c[i];
      assign d[2 - i] = my_let(a); // OK
    end : L1
  end : L0
`ifdef NEGATIVE_TEST
  assign e = L0[0].L1.my_let(a); // Illegal
`endif

endmodule
