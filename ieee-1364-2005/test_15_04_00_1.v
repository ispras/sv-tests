// IEEE Std 1364-2005
//   15. Timing checks
//     15.4 Edge-control specifiers
//       The posedge and negedge keywords can be used as a shorthand for certain edge-control
//       specifiers.

// ! TYPE: POSITIVE

module test(clr);

  input clr;

  specify
    specparam tWidth = 10;
    // For example, the construct
    $width(posedge clr, tWidth);

    // is equivalent to the following
    $width(edge [01, 0x, x1] clr, tWidth);

    // Similarly, the construct
    $width(negedge clr, tWidth);

    // is the same as the following
    $width(edge [10, x0, 1x] clr, tWidth);
  endspecify
endmodule
