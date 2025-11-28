// IEEE Std 1800-2012
//   15. Interprocess synchronization and communication
//    15.5 Named events
//     15.5.3 Persistent trigger: triggered property

// ! TYPE: POSITIVE

module top;

  event done, blast; // declare two new events
  event done_too = done; // declare 'done_too' as alias to 'done'

  task trigger(event ev);
    -> ev;
  endtask

  initial begin
    fork
      @ done_too; // wait for 'done' through 'done_too'
      #1 trigger(done); // trigger 'done' through task 'trigger'
    join

    fork
      -> blast;
      wait(blast.triggered);
    join
  end

endmodule
