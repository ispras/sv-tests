// IEEE Std 1800-2012
//   12. Procedural programming statements
//    12.7 Loop statements
//     12.7.1 The for-loop

// ! TYPE: POSITIVE

module top;

  bit [31:0] a, value;

  initial begin
    for (int count = 0; count < 3; count++)
      value = value + ((a[count]) * (count + 1));
    for (int count = 0, done = 0, j = 0; j * count < 125; j++, count++)
      $display("Value j = %d\n", j );
  end

endmodule
