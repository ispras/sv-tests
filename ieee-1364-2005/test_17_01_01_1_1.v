// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.1 Display system tasks
//       17.1.1 The display and write tasks
//         17.1.1.1 Escape sequences for special characters
//           The escape sequences given in Table 17-1, when included in a string argument, cause
//           special characters to be displayed.

// ! TYPE: POSITIVE

module disp;
  initial begin
    $display ("\\\t\\\n\"\123");
  end
endmodule
