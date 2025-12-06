// IEEE Std 1800-2012
//   17. Checkers
//    17.7 Checker variables
//     17.7.1 Checker variable assignments

// ! TYPE: NEGATIVE

checker check;
  bit a;
endchecker

module top(input clk);

  check my_check();
  wire x = my_check.a; // Illegal
  bit y;
  always @(posedge clk) begin
    my_check.a = y; // Illegal
  end

endmodule
