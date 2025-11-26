// IEEE Std 1800-2012
//   9. Processes
//    9.6 Process control
//     9.6.2 Disable statement

// ! TYPE: POSITIVE

module top(input a);

  initial begin : block_name
    if (a == 0)
      disable block_name;
  end // end of named block
  // continue with code following named block

endmodule
