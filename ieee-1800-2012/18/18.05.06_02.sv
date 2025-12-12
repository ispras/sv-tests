// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.5 Constraint blocks
//     18.5.6 Implication

// ! TYPE: POSITIVE

module top;

  virtual class C;
    bit [3:0] a, b;
    constraint c {(a == 0) -> (b == 1);}
  endclass

endmodule
