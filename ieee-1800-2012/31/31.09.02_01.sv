// IEEE Std 1800-2012
//   31. Timing checks
//    31.9 Negative timing checks
//     31.9.2 Conditions in negative timing checks

// ! TYPE: POSITIVE

module top(input CLK, D, cond1);
  reg ntfr;
  specify
    specparam tsetup = 1, thold = 1;
    $setup(D, CLK &&& cond1, tsetup, ntfr);
    $hold(CLK, D &&& cond1, thold, ntfr);
    $setuphold(CLK, D, tsetup, thold, ntfr, , cond1);
  endspecify
endmodule
