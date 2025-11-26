// IEEE Std 1364-2005
//   15. Timing checks
//     15.5 Notifiers: user-defined responses to timing violations
//       15.5.1 Requirements for accurate simulation
//         The setup time of -7 (the larger in absolute value of -3 and -7) creates a delay of 7
//         for dCLK; therefore, output Q shall not change until 7 time units after a positive edge
//         on CLK, rather than the 6 time units given in the specify path.

// ! TYPE: VARYING

module test(CLK, D, dCLK, dD, Q);

  input CLK, D;
  inout dCLK, dD;
  output Q;

  specify
`ifdef NEGATIVE_TEST
    (CLK = Q) = 6; // BUG
`else
    (CLK => Q) = 6;
`endif
    $setuphold(posedge CLK, posedge D, -3,  8, , , , dCLK, dD);
    $setuphold(posedge CLK, negedge D, -7, 13, , , , dCLK, dD);
  endspecify
endmodule
