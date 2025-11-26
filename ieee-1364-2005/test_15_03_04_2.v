// IEEE Std 1364-2005
//   15. Timing checks
//     15.3 Timing checks for clock and control signals
//       15.3.4 $width
//          The following example demonstrates some examples of legal and illegal calls.

// ! TYPE: VARYING

module test(clr);

  input clr;
  reg notif;

  specify
    specparam lim = 10, thresh = 0.5;
    
    // Legal Calls
    $width(negedge clr, lim);
    $width(negedge clr, lim, thresh, notif);
    $width(negedge clr, lim, 0, notif);
    
    // Illegal Calls
`ifdef NEGATIVE_TEST
    $width(negedge clr, lim, , notif);
    $width(negedge clr, lim, notif);
`endif
  endspecify
endmodule
