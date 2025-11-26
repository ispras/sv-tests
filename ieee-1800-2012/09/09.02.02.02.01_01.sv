// IEEE Std 1800-2012
//   9. Processes
//    9.2 Structured procedures
//     9.2.2 Always procedures
//      9.2.2.2 Combinational logic always_comb procedure
//       9.2.2.2.1 Implicit always_comb sensitivities

// ! TYPE: POSITIVE

module top;

  reg a, b, c, e;
  logic disable_error;

  always_comb
  begin
    a = b & c;
    A1:assert (a != e) else if (!disable_error) $error("failed");
  end

endmodule
