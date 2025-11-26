// IEEE Std 1800-2012
//   9. Processes
//    9.2 Structured procedures
//     9.2.2 Always procedures
//      9.2.2.1 General purpose always procedure

// ! TYPE: VARYING

module top;

  reg areg;
  parameter half_period = 5;

`ifdef NEGATIVE_TEST
  always areg = ~areg;
`endif

  always #half_period areg = ~areg;

endmodule
