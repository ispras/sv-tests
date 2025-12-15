// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.7 In-line constraints—randomize() with

// ! TYPE: POSITIVE

module top;

  class SimpleSum;
    rand bit [7:0] x, y, z;
    constraint c {z == x + y;}
  endclass

  task InlineConstraintDemo(SimpleSum p);
    int success;
    success = p.randomize() with {x < y;};
  endtask

endmodule
