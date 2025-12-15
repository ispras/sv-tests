// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.17 Random sequence generation—randsequence
//     18.17.6 Aborting productions—break and return

// ! TYPE: POSITIVE

module top;

  int flag;
  initial randsequence()
    TOP : P1 P2;
    P1 : A B C;
    P2 : A {if(flag == 1) return;} B C;
    A : {$display("A");};
    B : {if(flag == 2) return; $display("B");};
    C : {$display("C");};
  endsequence

endmodule
