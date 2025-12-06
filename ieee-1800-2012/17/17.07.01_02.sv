// IEEE Std 1800-2012
//   17. Checkers
//    17.7 Checker variables
//     17.7.1 Checker variable assignments

// ! TYPE: VARYING

module top;

  checker check1(bit a, b, event clk);
    rand bit x, y, z, v;
`ifdef NEGATIVE_TEST
    assign x = a & b; // Illegal
    always_comb
      y = a & b; // Illegal
`endif
    always_ff @clk
      z <= a & b; // OK
  endchecker : check1

endmodule
