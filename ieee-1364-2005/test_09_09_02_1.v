// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.9 Structured procedures
//       9.9.2 Always construct
//         The following code, for example, creates a zero-delay infinite loop.

// ! TYPE: POSITIVE

module test;
  reg areg;

  always areg = ~areg;
endmodule
