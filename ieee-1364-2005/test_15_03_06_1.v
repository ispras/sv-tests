// IEEE Std 1364-2005
//   15. Timing checks
//     15.3 Timing checks for clock and control signals
//       15.3.6 $nochange
//         In this example, the $nochange timing check shall report a violation if the data signal
//         changes while clk is high. It shall not be a violation if posedge clk and a transition
//         on data occur simultaneously.

// ! TYPE: POSITIVE

module test(clk, data);

  input clk, data;

  specify
    $nochange(posedge clk, data, 0, 0) ;
  endspecify
endmodule
