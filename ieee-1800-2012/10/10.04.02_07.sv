// IEEE Std 1800-2012
//   10. Assignment statements
//    10.4 Procedural assignments
//     10.4.2 Nonblocking procedural assignments

// ! TYPE: POSITIVE

module top;
  logic r1;
  logic [2:0] i;

  initial begin
    // makes assignments to 'r1' without cancelling previous assignments
    for (i = 0; i <= 5; i++)
      r1 <= # (i * 10) i[0];
  end
endmodule
