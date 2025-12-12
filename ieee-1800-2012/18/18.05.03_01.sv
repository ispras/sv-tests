// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.5 Constraint blocks
//     18.5.3 Set membership

// ! TYPE: POSITIVE

module top;

  virtual class C;
    rand integer x, y, z;
    constraint c1 {x inside {3, 5, [9:15], [24:32], [y:2 * y], z};}

    rand integer a, b, c;
    constraint c2 {a inside {b, c};}

    integer fives[4] = '{5, 10, 15, 20};
    rand integer v;
    constraint c3 {v inside {fives};}
  endclass

endmodule
