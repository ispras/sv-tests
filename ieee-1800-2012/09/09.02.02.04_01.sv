// IEEE Std 1800-2012
//   9. Processes
//    9.2 Structured procedures
//     9.2.2 Always procedures
//      9.2.2.4 Sequential logic always_ff procedure

// ! TYPE: POSITIVE

module top(input clock, reset, r2);

  logic r1;

  always_ff @(posedge clock iff reset == 0 or posedge reset) begin
    r1 <= reset ? 0 : r2 + 1;
  end

endmodule
