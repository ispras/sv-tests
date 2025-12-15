// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.17 Random sequence generation—randsequence
//     18.17.5 Interleaving productions—rand join

// ! TYPE: POSITIVE

module top;

  initial randsequence(TOP)
    TOP : rand join S1 S2;
    S1 : A B;
    S2 : C D;
    A : {$display("A");};
    B : {$display("B");};
    C : {$display("C");};
    D : {$display("D");};
  endsequence

endmodule
