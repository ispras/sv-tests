// IEEE Std 1800-2012
//   16. Assertions
//    16.8 Declaring sequences
//     16.8.2 Local variable formal arguments in sequence declarations

// ! TYPE: POSITIVE

module top;

  integer data_in, data_out, data, do1;
  reg a, b, c;

  sequence seq2_inlined;
    int v1, lv;
    (c, v1 = data) ##1
    (
      (1, lv = v1) ##0
      (a ##1 !a, lv = lv + data_in)
      ##1 (!b[*0:$] ##1 b && (data_out == lv), v1 = lv)
    )
    ##1 (do1 == v1);
  endsequence

endmodule
