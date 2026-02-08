// IEEE Std 1800-2012
//   31. Timing checks
//    31.9 Negative timing checks
//     31.9.1 Requirements for accurate simulation

// ! TYPE: POSITIVE

module top(input CLK, DATA);
  specify
    $setuphold(posedge CLK, DATA, -10, 20);
  endspecify
endmodule
