// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.8 Block statements
//       9.8.4 Start and finish times
//         When an assignment is to be made after two separate events have occurred, known as the
//         joining of events, a fork-join block can be useful. The two events can occur in any order
//         (or even at the same simulation time), the fork-join block will complete, and the
//         assignment will be made. In contrast, if the fork-join block was a begin-end block and
//         the Bevent occurred before the Aevent, then the block would be waiting for
//         the next Bevent.

// ! TYPE: POSITIVE

module test;

  event Aevent, Bevent;
  reg areg, breg;

  initial begin
    fork
      @Aevent;
      @Bevent;
    join
    areg = breg;
  end
endmodule
