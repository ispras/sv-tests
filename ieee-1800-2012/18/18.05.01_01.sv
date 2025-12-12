// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.5 Constraint blocks
//     18.5.1 External constraint blocks

// ! TYPE: POSITIVE

module top;

  class C;
    rand int x;
    constraint proto1; // implicit form
    extern constraint proto2; // explicit form
  endclass

  constraint C::proto1 {x inside {-4, 5, 7};}
  constraint C::proto2 {x >= 0;}

endmodule
