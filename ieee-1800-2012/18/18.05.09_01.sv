// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.5 Constraint blocks
//     18.5.9 Global constraints

// ! TYPE: POSITIVE

module top;

  class A; // leaf node
    rand bit [7:0] v;
  endclass

  class B extends A; // heap node
    rand A left;
    rand A right;
    constraint heapcond {left.v <= v; right.v > v;}
  endclass

endmodule
