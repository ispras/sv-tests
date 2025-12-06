// IEEE Std 1800-2012
//   17. Checkers
//    17.2 Checker declaration

// ! TYPE: POSITIVE

module top;

  // Checker with default input and initialized output arguments
  checker my_check4 (input logic in,
                     en = 1'b1, // default value
                     event clock,
                     output int ctr = 0); // initial value
    default clocking @clock; endclocking
    always_ff @clock
      if (en && in) ctr <= ctr + 1;
    a1: assert property (ctr < 5);
  endchecker : my_check4

endmodule
