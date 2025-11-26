// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.3 Operators
//     11.3.5 Operator expression short circuiting

// ! TYPE: POSITIVE

module top;

  logic regA, regB, regC, result ;

  function logic myFunc(logic x);
    return x;
  endfunction

  initial result = regA & (regB | myFunc(regC)) ;

endmodule
