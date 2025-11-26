// IEEE Std 1364-2005
//   15. Timing checks
//     15.5 Notifiers: user-defined responses to timing violations
//       15.5.2 Conditions in negative timing checks
//         This pair of $setup and $hold checks works together to provide the same check as
//         a single $setuphold. clk is the timecheck event for the $setup check, while data is the
//         timecheck event for the $hold check.

// ! TYPE: POSITIVE

module test(clk, data, cond1);

  input clk, data, cond1;
  reg ntfr;

  specify
    specparam tsetup = 1.2, thold = 1.3;
    $setup(data, clk &&& cond1, tsetup, ntfr);
    $hold(clk, data &&& cond1, thold, ntfr);
  endspecify
endmodule
