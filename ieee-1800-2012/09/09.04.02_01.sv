// IEEE Std 1800-2012
//   9. Processes
//    9.4 Procedural timing controls
//     9.4.2 Event control

// ! TYPE: POSITIVE

module top(input clock);

  reg rega, regb, r;

  initial begin
    @r rega = regb; // controlled by any value change in the reg 'r'
    @(posedge clock) rega = regb; // controlled by posedge on 'clock'
    forever @(negedge clock) rega = regb; // controlled by negedge on 'clock'
    forever @(edge clock) rega = regb; // controlled by edge on 'clock'
  end

endmodule
