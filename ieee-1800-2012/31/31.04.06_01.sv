// IEEE Std 1800-2012
//   31. Timing checks
//    31.4 Timing checks for clock and control signals
//     31.4.6 $nochange

// ! TYPE: POSITIVE

module top(input clk, data);
  specify
    $nochange (posedge clk, data, 0, 0);
  endspecify
endmodule
