// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.5 Constraint blocks
//     18.5.13 Constraint guards

// ! TYPE: POSITIVE

module top;

  class D;
    int x;
  endclass

  class C;
    rand int x, y;
    D a, b;
    constraint c1 {(x < y && a.x > b.x && a.x == 5) -> x + y == 10;}
  endclass

endmodule
