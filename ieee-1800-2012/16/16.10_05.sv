// IEEE Std 1800-2012
//   16. Assertions
//    16.10 Local variables

// ! TYPE: POSITIVE

module top;

  integer data, data_out;
  reg a, b, c;

  sequence rep_v;
    int x = 0;
    (a[->1], x = x + data)[*4] ##1 b ##1 c && (data_out == x);
  endsequence

endmodule
