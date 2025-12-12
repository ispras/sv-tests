// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.5 Constraint blocks
//     18.5.5 Uniqueness constraints

// ! TYPE: POSITIVE

module top;

  virtual class C;
    rand byte a[5];
    rand byte b;
    rand byte excluded;
    constraint u {unique {b, a[2:3], excluded};}
    constraint exclusion {excluded == 5;}
  endclass

endmodule
