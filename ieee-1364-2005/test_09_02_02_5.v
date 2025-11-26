// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.2 Procedural assignments
//       9.2.2 The nonblocking procedural assignment
//         If the simulator executes two procedural blocks concurrently and if these procedural
//         blocks contain nonblocking assignment operators to the same variable, the final value
//         of that variable is indeterminate.

// ! TYPE: POSITIVE

module multiple2;

  reg a;

  initial a  = 1;
  initial a <= #4 0;    // schedules 0 at time 4
  initial a <= #4 1;    // schedules 1 at time 4

  // At time 4, a = ??
  // The assigned value of the reg is indeterminate
endmodule
