// IEEE Std 1800-2012
//   21. Input/output system tasks and system functions
//    21.2 Display system tasks
//     21.2.2 Strobed monitoring

// ! TYPE: POSITIVE

module top(input clock, data);

  initial begin
    forever @(negedge clock)
      $strobe ("At time %d, data is %h", $time, data);
  end

endmodule
