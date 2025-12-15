// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.5 Constraint blocks
//     18.5.13 Constraint guards

// ! TYPE: POSITIVE

module top;

  class SList;
    rand int n;
    rand SList next;
    constraint sort {n < next.n;}
  endclass

endmodule
