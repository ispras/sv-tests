// IEEE Std 1800-2012
//   9. Processes
//    9.4 Procedural timing controls
//     9.4.1 Delay control

// ! TYPE: POSITIVE

module top;

  reg rega, regb;

  initial #10 rega = regb;

endmodule
