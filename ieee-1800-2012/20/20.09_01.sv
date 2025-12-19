// IEEE Std 1800-2012
//   20. Utility system tasks and system functions
//    20.9 Bit vector system functions

// ! TYPE: POSITIVE

module top;

  // Custom one-hot that, unlike '$onehot', fails on any 'X' or 'Z'
  let my_one_hot_known(myvec) = (
                                ($countones(myvec) == 1) &&
                                ($countbits(myvec, 'x, 'z) == 0));

endmodule
