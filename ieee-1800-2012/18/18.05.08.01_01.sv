// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.5 Constraint blocks
//     18.5.8 Iterative constraints
//      18.5.8.1 foreach iterative constraints

// ! TYPE: POSITIVE

module top;

  class C;
    rand byte A[] ;
    constraint C1 {foreach (A[i]) A[i] inside {2, 4, 8, 16};}
    constraint C2 {foreach (A[j]) A[j] > 2 * j;}
  endclass

endmodule
