// IEEE Std 1364-2005
//   15. Timing checks
//     15.5 Notifiers: user-defined responses to timing violations
//       15.5.1 Requirements for accurate simulation
//         If a given signal has a delayed signal in some timing checks but not in others, the
//         delayed signal shall be used in both cases. Explicit delayed signals of del_CLK and
//         del_DATA1 are created for CLK and DATA1, while an implicit delayed signal is created for
//         DATA2. In other words, CLK has only one delayed signal created for it, del_CLK, rather
//         than one explicit delayed signal for the first check and another implicit delayed signal
//         for the second check.

// ! TYPE: POSITIVE

module test(CLK, DATA1, DATA2, del_CLK, del_DATA1);

  input CLK, DATA1, DATA2;
  inout del_CLK, del_DATA1;

  specify
    $setuphold(posedge CLK, DATA1, -10, 20, ,,, del_CLK, del_DATA1);
    $setuphold(posedge CLK, DATA2, -15, 18);
  endspecify
endmodule
