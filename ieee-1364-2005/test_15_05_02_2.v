// IEEE Std 1364-2005
//   15. Timing checks
//     15.5 Notifiers: user-defined responses to timing violations
//       15.5.2 Conditions in negative timing checks
//         The following $setuphold check is equivalent to the separate $setup and
//         $hold checks shown above.

// ! TYPE: POSITIVE

module test(clk, data, cond1);

  input clk, data, cond1;
  reg ntfr;

  specify
    specparam tsetup = 1.2, thold = 1.3;
    $setuphold(clk, data, tsetup, thold, ntfr, , cond1);
  endspecify
endmodule
