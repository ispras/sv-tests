// IEEE Std 1800-2012
//   17. Checkers
//    17.7 Checker variables
//     17.7.3 Scheduling semantics

// ! TYPE: POSITIVE

module top(input clk);

  checker my_check;
    bit a;
    sequence s; @(posedge clk) a;endsequence
    always_ff @clk a <= s.triggered;
  endchecker

endmodule
