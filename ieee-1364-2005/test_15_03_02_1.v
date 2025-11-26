// IEEE Std 1364-2005
//   15. Timing checks
//     15.3 Timing checks for clock and control signals
//       15.3.2 $timeskew

// ! TYPE: POSITIVE

module test(CP, MODE, CPN);

  input CP, MODE, CPN;

  specify
    specparam event_based_flag = 1, remain_active_flag = 1;
    $timeskew(posedge CP &&& MODE, negedge CPN, 50,, event_based_flag, remain_active_flag);
  endspecify
endmodule
