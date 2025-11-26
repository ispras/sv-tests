// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.8 Block statements
//       9.8.1 Sequential blocks
//         A sequential block enables the following two assignments to have a deterministic result.
//         The first assignment is performed, and areg is updated before control passes to the
//         second assignment.

// ! TYPE: POSITIVE

module test;

  reg areg, breg, creg;

  initial begin
    areg = breg;
    creg = areg;     // creg stores the value of breg
  end
endmodule
