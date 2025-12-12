// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.5 Constraint blocks
//     18.5.6 Implication

// ! TYPE: POSITIVE

module top;

  virtual class C;
    rand byte mode, little, big, len;

    constraint c {
      mode == little -> len < 10;
      mode == big -> len > 100;
    }
  endclass

endmodule
