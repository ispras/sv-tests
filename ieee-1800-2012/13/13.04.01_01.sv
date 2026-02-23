// IEEE Std 1800-2012
//   13. Tasks and functions (subroutines)
//    13.4 Functions
//     13.4.1 Return values and void functions

// ! TYPE: POSITIVE

module top;

  logic [15:0] a, b;
  logic [7:0] c, d;

  function [15:0] myfunc1 (input [7:0] x, y);
    myfunc1 = x * y - 1; // return value assigned to function name
  endfunction

  function [15:0] myfunc2 (input [7:0] x, y);
    return x * y - 1; // return value is specified using return statement
  endfunction

  initial begin
    a = b + myfunc1(c, d); // call 'myfunc1' (defined above) as an expression
    myprint(a); // call 'myprint' (defined below) as a statement
  end

  function void myprint (int a);
  endfunction

endmodule
