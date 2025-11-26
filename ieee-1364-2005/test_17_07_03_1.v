// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.7 Simulation time system functions
//       17.7.3 $realtime
//         In this example, the event times in the reg  set  are multiples of 10 ns because 10 ns is
//         the time unit of the module. They are real numbers because $realtime returns a real
//         number.

// ! TYPE: POSITIVE

`timescale 10 ns / 1 ns

module test;

  reg set;
  parameter p = 1.55;

  initial begin
    $monitor($realtime,, "set=", set);
    #p set = 0;
    #p set = 1;
  end
endmodule
