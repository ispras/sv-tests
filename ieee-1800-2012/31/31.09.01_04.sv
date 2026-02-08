// IEEE Std 1800-2012
//   31. Timing checks
//    31.9 Negative timing checks
//     31.9.1 Requirements for accurate simulation

// ! TYPE: POSITIVE

module top(input CLK, D, output dCLK, dD, Q);
  specify
    (CLK => Q) = 6;
    $setuphold(posedge CLK, posedge D, -3, 8, , , , dCLK, dD);
    $setuphold(posedge CLK, negedge D, -7, 13, , , , dCLK, dD);
  endspecify
endmodule
