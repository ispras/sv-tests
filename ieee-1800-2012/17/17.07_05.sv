// IEEE Std 1800-2012
//   17. Checkers
//    17.7 Checker variables

// ! TYPE: POSITIVE

module top;

  checker reason_about_all_bit(bit [63:0] data1, bit [63:0] data2, event clock);
    a1: assert property (@clock data1 == data2);
  endchecker : reason_about_all_bit

endmodule
