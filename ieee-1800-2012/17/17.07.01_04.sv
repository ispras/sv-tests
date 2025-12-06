// IEEE Std 1800-2012
//   17. Checkers
//    17.7 Checker variables
//     17.7.1 Checker variable assignments

// ! TYPE: POSITIVE

module top(input clk);

  checker check;
    // Toggling variable:
    // 'a' may have either 0101... or 1010... pattern
    rand bit a;
    always_ff @clk a <= !a;
  endchecker

endmodule
