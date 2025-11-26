// IEEE Std 1800-2012
//   10. Assignment statements
//    10.4 Procedural assignments
//     10.4.2 Nonblocking procedural assignments

// ! TYPE: POSITIVE

module top;
  logic a;
  initial #8 a <= #8 1; // executed at time 8;
                        // schedules an update of 1 at time 16
  initial #12 a <= #4 0; // executed at time 12;
                         // schedules an update of 0 at time 16

  // Because it is determinate that the update of 'a' to the value 1
  // is scheduled before the update of 'a' to the value 0,
  // then it is determinate that 'a' will have the value 0
  // at the end of time slot 16.
endmodule
