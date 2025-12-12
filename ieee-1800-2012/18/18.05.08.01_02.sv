// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.5 Constraint blocks
//     18.5.8 Iterative constraints
//      18.5.8.1 foreach iterative constraints

// ! TYPE: POSITIVE

module top;

  class C;
    rand int A[];
    constraint c1 {A.size inside {[1:10]};}
    constraint c2 {foreach (A[k]) (k < A.size - 1) -> A[k + 1] > A[k];}
  endclass

endmodule
