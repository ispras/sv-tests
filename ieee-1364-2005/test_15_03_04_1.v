// IEEE Std 1364-2005
//   15. Timing checks
//     15.3 Timing checks for clock and control signals
//       15.3.4 $width
//          Here is a legal $width check when the notifier is required and the threshold is not.

// ! TYPE: POSITIVE

module test(clk);

  input clk;
  reg ntfr_reg;

  specify
    $width(posedge clk, 6, 0, ntfr_reg);
  endspecify
endmodule
