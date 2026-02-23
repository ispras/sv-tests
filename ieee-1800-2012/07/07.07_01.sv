// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.7 Arrays as arguments to subroutines

// ! TYPE: VARYING

module top;

  task fun(int a[3:1][3:1]);
  endtask

  int b1[3:1][3:1];
  int b2[1:3][0:2];
  logic b3[3:1][3:1];
  event b4[3:1][3:1];
  int b5[3:1];
  int b6[3:1][4:1];

  initial begin
    fun(b1); // OK: same type, dimension, and size
    fun(b2); // OK: same type, dimension, & size (different ranges)
`ifdef NEGATIVE_TEST
    fun(b3); // error: incompatible element type
    fun(b4); // error: incompatible type
    fun(b5); // error: incompatible number of dimensions
    fun(b6); // error: incompatible size (3 vs. 4)
`endif
  end

endmodule
