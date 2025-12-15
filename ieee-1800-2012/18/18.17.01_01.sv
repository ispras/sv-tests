// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.17 Random sequence generation—randsequence
//     18.17.1 Random production weights

// ! TYPE: POSITIVE

module top;

  initial randsequence(first)
    add : {$display("add");};
    dec : {$display("dec");};
    first : add := 3
    | dec := (1 + 1); // 2
  endsequence

endmodule
