// IEEE Std 1800-2012
//   13. Tasks and functions (subroutines)
//    13.4 Functions
//     13.4.2 Static and automatic functions

// ! TYPE: POSITIVE

module top;

  // define the function
  function automatic integer factorial (input [31:0] operand);
    if (operand >= 2)
      factorial = factorial (operand - 1) * operand;
    else
      factorial = 1;
  endfunction: factorial

  // test the function
  integer result;
  initial begin
    for (int n = 0; n <= 7; n++) begin
      result = factorial(n);
      $display("%0d factorial=%0d", n, result);
    end
  end

endmodule
