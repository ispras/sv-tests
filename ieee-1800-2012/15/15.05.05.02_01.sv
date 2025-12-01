// IEEE Std 1800-2012
//   15. Interprocess synchronization and communication
//    15.5 Named events
//     15.5.5 Operations on named event variables
//      15.5.5.1 Merging events

// ! TYPE: POSITIVE

module top;

  event E1 = null;

  initial begin
    @ E1; // undefined: might block forever or not at all
    wait(E1.triggered); // undefined
    -> E1; // no effect
  end

endmodule
