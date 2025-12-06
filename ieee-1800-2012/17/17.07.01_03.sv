// IEEE Std 1800-2012
//   17. Checkers
//    17.7 Checker variables
//     17.7.1 Checker variable assignments

// ! TYPE: VARYING

module top;

  checker check;
    bit v;
`ifdef NEGATIVE_TEST
    initial v = 1'b0; // Illegal
`endif
    bit w = 1'b0; // OK
  endchecker

endmodule
