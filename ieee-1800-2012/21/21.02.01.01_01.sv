// IEEE Std 1800-2012
//   21. Input/output system tasks and system functions
//    21.2 Display system tasks
//     21.2.1 The display and write tasks
//      21.2.1.1 Escape sequences for special characters

// ! TYPE: POSITIVE

module top;

  initial begin
    $display("\\\t\\\n\"\123");
  end

endmodule
