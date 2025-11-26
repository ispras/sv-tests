// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.4 Operator descriptions
//     11.4.3 Arithmetic operators
//      11.4.3.1 Arithmetic expressions with unsigned and signed types

// ! TYPE: POSITIVE

module top;

  integer intS;
  var logic [15:0] U;
  var logic signed [15:0] S;

  initial begin
    intS = -4'd12;
    U = intS / 3; // expression result is -4,
                  // 'intS' is an integer data type, 'U' is 65532

    U = -4'd12; // 'U' is 65524
    intS = U / 3; // expression result is 21841,
                  // 'U' is a logic data type

    intS = -4'd12 / 3; // expression result is 1431655761.
                       // -4'd12 is effectively a 32-bit logic data type

    U = -12 / 3; // expression result is -4, -12 is effectively
                 // an integer data type. 'U' is 65532

    S = -12 / 3; // expression result is -4. 'S' is a signed logic

    S = -4'sd12 / 3; // expression result is 1. -4'sd12 is actually 4.
                     // The rules for integer division yield 4/3==1
  end

endmodule
