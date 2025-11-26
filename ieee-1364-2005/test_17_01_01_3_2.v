// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.1 Display system tasks
//       17.1.1 The display and write tasks
//         17.1.1.3 Size of displayed data

// ! TYPE: POSITIVE

module printval;

  reg [11:0] r1;

  initial begin
    r1 = 10;
    $display("Printing with maximum size - :%d: :%h:", r1, r1);
    $display("Printing with minimum size - :%0d: :%0h:", r1, r1);
  end
endmodule
