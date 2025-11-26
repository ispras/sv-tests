// IEEE Std 1800-2012
//   10. Assignment statements
//    10.6 Procedural continuous assignments
//     10.6.1 The assign and deassign procedural statements

// ! TYPE: POSITIVE

module top(q, d, clear, preset, clock);
  output q;
  input d, clear, preset, clock;
  logic q;

  always @(clear or preset)
    if (!clear)
      assign q = 0;
    else if (!preset)
      assign q = 1;
    else
      deassign q;

  always @(posedge clock)
    q = d;
endmodule
