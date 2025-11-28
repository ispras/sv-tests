// IEEE Std 1800-2012
//   14. Clocking blocks
//    14.16 Synchronous drives
//     14.16.2 Driving clocking output signals

// ! TYPE: POSITIVE

module top(input clk);

  reg j;
  clocking e @(edge clk);
    output j;
  endclocking

endmodule
