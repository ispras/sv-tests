// IEEE Std 1800-2012
//   9. Processes
//    9.6 Process control
//     9.6.2 Disable statement

// ! TYPE: POSITIVE

module top;

  task task1;
  endtask

  always begin : always1
    #10;
    t1: task1( ); // task call
  end

  always begin
    #10;
    disable top.always1; // exit 'always1', which will exit 'task1',
                         // if it was currently executing
  end

endmodule
