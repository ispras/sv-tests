// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.1 Display system tasks
//       17.1.2 Strobed monitoring
//         In this example, $strobe writes the time and data information to the standard output and
//         the log file at each negative edge of the clock. The action shall occur just before
//         simulation time is advanced and after all other events at that time have occurred so that
//         the data written are sure to be the correct data for that simulation time.

// ! TYPE: POSITIVE

module test(clock, data);

  input clock, data;

  initial begin
    forever @(negedge clock)
      $strobe("At time %d, data is %h", $time, data);
  end
endmodule
