// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.2 Procedural assignments
//       9.2.2 The nonblocking procedural assignment
//         The order of the execution of distinct nonblocking assignments to a given variable shall
//         be preserved. In other words, if there is clear ordering of the execution of a set of
//         nonblocking assignments, then the order of the resulting updates of the destination of
//         the nonblocking assignments shall be the same as the ordering of the execution.

// ! TYPE: POSITIVE

module multiple;

  reg a;
  initial a = 1;

  // The assigned value of the reg is determinate
  initial begin
    a <= #4 0;   // schedules a = 0 at time 4
    a <= #4 1;   // schedules a = 1 at time 4
  end // At time 4, a = 1
endmodule
