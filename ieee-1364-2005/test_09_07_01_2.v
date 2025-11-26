// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.7 Procedural timing controls
//       9.7.1 Delay control
//         The next three examples provide an expression following the number sign (#). Execution
//         of the assignment is delayed by the amount of simulation time specified by the value of
//         the expression.

// ! TYPE: POSITIVE

module test;

  parameter d = 1, e = 1;
  reg rega, regb;
  integer regr;

  initial begin
    regr = 5;
    #d rega = regb;         // d is defined as a parameter
    #((d+e)/2) rega = regb; // delay is average of d and e
    #regr regr = regr + 1;  // delay is the value in regr
  end
endmodule
