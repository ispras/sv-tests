// IEEE Std 1800-2012
//   15. Interprocess synchronization and communication
//    15.5 Named events
//     15.5.5 Operations on named event variables
//      15.5.5.1 Merging events

// ! TYPE: POSITIVE

module top;

  event E1, E2;

  initial begin
    fork
      T1: forever @ E2;
      T2: forever @ E1;
      T3: begin
        E2 = E1;
        forever -> E2;
      end
    join
  end

endmodule
