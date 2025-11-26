// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.8 Block statements
//       9.8.1 Sequential blocks
//         Delay control can be used in a sequential block to separate the two assignments in time.

module test(clock);

  input clock;
  reg areg, breg, creg;

  initial begin
    areg = breg;
    @(posedge clock) creg = areg;  // assignment delayed until  posedge on clock
  end
endmodule
