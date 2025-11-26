// IEEE Std 1800-2012
//   9. Processes
//    9.3 Block statements
//     9.3.2 Parallel blocks

// ! TYPE: NEGATIVE

module top;

  task wait_20;
    fork
      # 20;
      return; // Illegal: cannot 'return'; task lives in another process
    join_none
  endtask

endmodule
