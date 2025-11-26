// IEEE Std 1364-2005
//   10. Tasks and functions
//     10.4 Functions and function calling
//       10.4.4 Function rules
//         This example defines a function called factorial that returns an integer value.
//         The factorial function is called iteratively and the results are printed.

// ! TYPE: POSITIVE

module tryfact;
  // define the function
  function automatic integer factorial;
    input [31:0] operand;
    integer i;
    if (operand >= 2)
      factorial = factorial (operand - 1) * operand;
    else
      factorial = 1;
  endfunction

  // test the function
  integer result;
  integer n;
  initial begin
    for (n = 0; n <= 7; n = n+1) begin
      result = factorial(n);
      $display ("%0d factorial=%0d", n, result);
    end
  end
endmodule // tryfact
