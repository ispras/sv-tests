// IEEE Std 1800-2012
//   21. Input/output system tasks and system functions
//    21.2 Display system tasks
//     21.2.1 The display and write tasks
//      21.2.1.3 Size of displayed data

// ! TYPE: POSITIVE

module top;

  logic [11:0] r1;

  initial begin
    r1 = 10;
    $display("Printing with maximum size - :%d: :%h:", r1, r1);
    $display("Printing with minimum size - :%0d: :%0h:", r1, r1);
  end

endmodule
