// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.5 Constraint blocks
//     18.5.8 Iterative constraints
//      18.5.8.2 Array reduction iterative constraints

// ! TYPE: POSITIVE

module top;

  class C;
    rand bit [7:0] A[] ;
    constraint c1 {A.size == 5;}
    constraint c2 {A.sum() with (int'(item)) < 1000;}
    // The constraint 'c2' will be interpreted as:
    // (int'(A[0]) + int'(A[1]) + int'(A[2]) + int'(A[3]) + int'(A[4])) < 1000
  endclass

endmodule
