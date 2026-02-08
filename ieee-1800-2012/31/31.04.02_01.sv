// IEEE Std 1800-2012
//   31. Timing checks
//    31.4 Timing checks for clock and control signals
//     31.4.2 $timeskew

// ! TYPE: POSITIVE

module top(input CP, MODE, CPN);
  specify
    specparam event_based_flag = 1, remain_active_flag = 1;
    $timeskew (posedge CP &&& MODE, negedge CPN, 50, , event_based_flag,
               remain_active_flag);
  endspecify
endmodule
