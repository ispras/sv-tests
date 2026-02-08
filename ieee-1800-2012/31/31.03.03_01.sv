// IEEE Std 1800-2012
//   31. Timing checks
//    31.3 Timing checks using a stability window
//     31.3.3 $setuphold

// ! TYPE: POSITIVE

module top(input clk, input data);
  specify
    specparam tSU = 1, tHLD = 1;
    $setuphold(posedge clk, data, tSU, tHLD);
    // is equivalent in functionality to:
    $setup(data, posedge clk, tSU);
    $hold(posedge clk, data, tHLD);
  endspecify
endmodule
