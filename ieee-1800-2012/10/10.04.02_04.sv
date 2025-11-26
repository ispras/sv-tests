// IEEE Std 1800-2012
//   10. Assignment statements
//    10.4 Procedural assignments
//     10.4.2 Nonblocking procedural assignments

// ! TYPE: POSITIVE

module top;
  logic a;

  initial a = 1; // The assigned value of the variable is determinate

  initial begin
    a <= #4 0; // schedules 'a = 0' at time 4
    a <= #4 1; // schedules 'a = 1' at time 4
  end // At time 4, 'a = 1'
endmodule
