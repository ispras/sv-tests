// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.2 Procedural assignments
//       9.2.2 The nonblocking procedural assignment
//         The following example shows how the value of i[0] is assigned to r1 and how the
//         assignments are scheduled to occur after each time delay.

// ! TYPE: POSITIVE

module multiple4;

  reg r1;
  reg [2:0] i;

  initial begin
    // makes assignments to r1 without cancelling previous assignments
    for (i = 0; i <= 5; i = i+1)
      r1 <= # (i*10) i[0];
  end
endmodule
