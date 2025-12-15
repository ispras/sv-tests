// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.17 Random sequence generation—randsequence
//     18.17.4 Repeat production statements

// ! TYPE: POSITIVE

module top;

  initial randsequence()
    PUSH_OPER : repeat($urandom_range(2, 6)) PUSH;
    PUSH : {$display("push");};
  endsequence

endmodule
