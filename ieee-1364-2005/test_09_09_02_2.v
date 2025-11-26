// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.9 Structured procedures
//       9.9.2 Always construct
//         Providing a timing control to the above code creates a potentially useful description
//         as shown in the following.

// ! TYPE: POSITIVE

module test;

  parameter half_period = 10;
  reg areg;

  always #half_period areg = ~areg;
endmodule
