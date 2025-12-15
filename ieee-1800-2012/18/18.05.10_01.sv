// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.5 Constraint blocks
//     18.5.10 Variable ordering

// ! TYPE: POSITIVE

module top;

  class B;
    rand bit s;
    rand bit [31:0] d;
    constraint c {s -> d == 0;}
    constraint order {solve s before d;}
  endclass

endmodule
