// IEEE Std 1800-2012
//   20. Utility system tasks and system functions
//    20.3 Simulation time system functions
//     20.3.1 $time

// ! TYPE: POSITIVE

`timescale 10 ns / 1 ns
module top;

  logic set;
  parameter p = 1.55;

  initial begin
    $monitor($time, , "set=", set);
    #p set = 0;
    #p set = 1;
  end

endmodule
