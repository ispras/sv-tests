// IEEE Std 1800-2012
//   17. Checkers
//    17.7 Checker variables

// ! TYPE: POSITIVE

module top;

  checker reason_about_one_bit(bit [63:0] data1, bit [63:0] data2, event clock);
    rand const bit [5:0] idx;
    a1: assert property (@clock data1[idx] == data2[idx]);
  endchecker : reason_about_one_bit

endmodule
