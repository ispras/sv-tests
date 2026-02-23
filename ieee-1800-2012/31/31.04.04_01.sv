// IEEE Std 1800-2012
//   31. Timing checks
//    31.4 Timing checks for clock and control signals
//     31.4.4 $width

// ! TYPE: VARYING

module top(input clk, clr, thresh, output reg ntfr_reg);
  integer notif;
  specify
    specparam lim = 1, thresh_val = 1;
    // Legal Calls
    $width (posedge clk, 6, 0, ntfr_reg);
    $width (negedge clr, lim);
    $width (negedge clr, lim, thresh_val, notif);
    $width (negedge clr, lim, 0, notif);
`ifdef NEGATIVE_TEST
    // Illegal Calls
    $width (negedge clr, lim, , notif);
    $width (negedge clr, lim, notif);
`endif
  endspecify
endmodule
