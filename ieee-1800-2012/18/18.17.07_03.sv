// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.17 Random sequence generation—randsequence
//     18.17.7 Value passing between productions

// ! TYPE: POSITIVE

module top;

  int cnt, cond;

  initial randsequence(A)
    void A : A1 A2;
    void A1 : {cnt = 1;} B repeat(5) C B
              {$display("c=%d, b1=%d, b2=%d", C, B[1], B[2]);}
              ;
    void A2 : if (cond) D(5) else D(20)
              {$display("d1=%d, d2=%d", D[1], D[2]);}
              ;
    int B : C {return C;}
            | C C {return C[2];}
            | C C C {return C[3];}
            ;
    int C : {cnt = cnt + 1; return cnt;};
    int D (int prm) : {return prm;};
  endsequence

endmodule
