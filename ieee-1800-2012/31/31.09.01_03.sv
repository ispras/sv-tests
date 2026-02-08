// IEEE Std 1800-2012
//   31. Timing checks
//    31.9 Negative timing checks
//     31.9.1 Requirements for accurate simulation

// ! TYPE: POSITIVE

module top(input CLK, DATA1, DATA2, output del_CLK, del_DATA1);
  specify
    $setuphold(posedge CLK, DATA1, -10, 20, , , , del_CLK, del_DATA1);
    $setuphold(posedge CLK, DATA2, -15, 18);
  endspecify
endmodule
