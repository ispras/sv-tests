// IEEE Std 1800-2012
//   31. Timing checks
//    31.3 Timing checks using a stability window
//     31.3.6 $recrem

// ! TYPE: POSITIVE

module top(input clk, clear);
  specify
    specparam tREC = 1, tREM = 1;
    $recrem(posedge clear, posedge clk, tREC, tREM);
    // is equivalent in functionality to:
    $removal(posedge clear, posedge clk, tREM);
    $recovery(posedge clear, posedge clk, tREC);
  endspecify
endmodule
