// IEEE Std 1364-2005
//   15. Timing checks
//     15.2 Timing checks using a stability window
//       15.2.3 $setuphold
//         The $setuphold timing check combines the functionality of the $setup and $hold timing
//         checks into a single timing check.

// ! TYPE: POSITIVE

module test(clk, data);

  input clk, data;

  specify
    specparam tSU = 1.5, tHLD = 2.1;
    $setuphold(posedge clk, data, tSU, tHLD);

    // is equivalent in functionality to the following, if tSU and tHLD are not negative
    $setup(data, posedge clk, tSU);
    $hold(posedge clk, data, tHLD);
  endspecify
endmodule
