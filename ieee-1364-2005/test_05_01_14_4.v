// IEEE Std 1364-2005
//   5. Expressions
//    5.1 Operators
//      5.1.14 Concatenations
//        Example 4

// ! TYPE: POSITIVE

module test;

  reg [7:0] result;
  reg [1:0] y, w;

  function [1:0] func;
    input [1:0] x;
    begin
      func = x;
    end
  endfunction

  initial begin
    // When a replication expression is evaluated, the operands shall be evaluated exactly once,
    // even if the replication constant is zero. For example:
    result = {4{func(w)}};

    // would be computed as
    y = func(w) ;
    result = {y, y, y, y};
  end
endmodule
