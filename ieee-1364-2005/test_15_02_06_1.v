// IEEE Std 1364-2005
//   15. Timing checks
//     15.2 Timing checks using a stability window
//       15.2.6 $recrem
//         The $recrem timing check combines the functionality of the $removal and $recovery timing
//         checks into a single timing check.

// ! TYPE: POSITIVE

module test(clk, clear);

  input clk, clear;

  specify
    specparam tREC = 1.5, tREM = 2.1;
    $recrem(posedge clear, posedge clk, tREC, tREM);

    // is equivalent in functionality to the following, if tREC and tREM are not negative
    $removal(posedge clear, posedge clk, tREM);
    $recovery(posedge clear, posedge clk, tREC);
  endspecify
endmodule
