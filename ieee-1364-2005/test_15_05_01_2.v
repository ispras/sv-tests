// IEEE Std 1364-2005
//   15. Timing checks
//     15.5 Notifiers: user-defined responses to timing violations
//       15.5.1 Requirements for accurate simulation
//         Implicit delayed signals shall be created for CLK, DATA1, and DATA2, one for each. Even
//         though CLK is referenced in two different timing checks, only one implicit delayed signal
//         is created, and it is used for both timing checks.

// ! TYPE: POSITIVE

module test(CLK, DATA1, DATA2);

  input CLK, DATA1, DATA2;

  specify
    $setuphold(posedge CLK, DATA1, -10, 20);
    $setuphold(posedge CLK, DATA2, -15, 18);
  endspecify
endmodule
