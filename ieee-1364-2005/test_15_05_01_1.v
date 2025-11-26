// IEEE Std 1364-2005
//   15. Timing checks
//     15.5 Notifiers: user-defined responses to timing violations
//       15.5.1 Requirements for accurate simulation
//         Implicit delayed signals shall be created for CLK and DATA, but it shall not be possible
//         to access them. The $setuphold check shall be properly evaluated, but functional behavior
//         shall not always be accurate. The old DATA value shall be incorrectly clocked in if DATA
//         transitions between posedge CLK and 10 time units later.

// ! TYPE: POSITIVE

module test(CLK, DATA);

  input CLK, DATA;

  specify
    $setuphold(posedge CLK, DATA, -10, 20);
  endspecify
endmodule
