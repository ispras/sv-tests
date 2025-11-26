// IEEE Std 1800-2012
//   9. Processes
//    9.6 Process control
//     9.6.1 Wait fork statement

// ! TYPE: POSITIVE

module top;

  task exec1;
  endtask

  task exec2;
  endtask

  task exec3;
  endtask

  task exec4;
  endtask

  task do_test;
    fork
      exec1();
      exec2();
    join_any
    fork
      exec3();
      exec4();
    join_none
    wait fork; // block until 'exec1' ... 'exec4' complete
  endtask

  initial begin
    do_test();
  end

endmodule
