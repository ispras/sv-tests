// IEEE Std 1800-2012
//   15. Interprocess synchronization and communication
//    15.5 Named events
//     15.5.5 Operations on named event variables
//      15.5.5.1 Merging events

// ! TYPE: POSITIVE

module top;

  event E1, E2;

  initial begin
    if (E1) // same as 'if (E1 != null)'
      E1 = E2;
    if (E1 == E2)
      $display("E1 and E2 are the same event");
  end

endmodule
