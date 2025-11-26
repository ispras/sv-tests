// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.7 Procedural timing controls
//       9.7.2 Event control
//         The following example shows illustrations of edge-controlled statements.

// ! TYPE: POSITIVE

module test(clock);

  input clock;
  reg r, rega, regb;

  initial begin
    @r rega = regb; // controlled by any value change in the reg r
    @(posedge clock) rega = regb; // controlled by posedge on clock
    forever @(negedge clock) rega = regb; // controlled by negative edge
  end
endmodule
