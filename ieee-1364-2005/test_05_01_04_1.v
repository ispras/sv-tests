// IEEE Std 1364-2005
//   5. Expressions
//    5.1 Operators
//      5.1.4 Expression evaluation order

// ! TYPE: POSITIVE

module test;
  reg regA, regB, regC, result;

  initial begin
    result = regA & (regB | regC);
  end
endmodule
