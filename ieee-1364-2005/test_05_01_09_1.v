// IEEE Std 1364-2005
//   5. Expressions
//    5.1 Operators
//      5.1.9 Logical operators
//        Example 1

// ! TYPE: POSITIVE

module test;

  reg regA, regB, alpha, beta;

  initial begin
    regA = alpha && beta; // regA is set to 0
    regB = alpha || beta; // regB is set to 1
  end
endmodule
