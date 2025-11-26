// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.1 Display system tasks
//       17.1.1 The display and write tasks
//         17.1.1.3 Size of displayed data

// ! TYPE: POSITIVE

module test;

  reg [31:0] data, addr;

  initial begin
     $display ("d=%0h a=%0h", data, addr);
  end
endmodule
