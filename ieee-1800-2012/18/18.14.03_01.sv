// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.14 Random stability
//     18.14.3 Object stability

// ! TYPE: POSITIVE

module top;

  class C1;
    rand integer x;
  endclass

  class C2;
    rand integer y;
  endclass

  initial begin
    C1 c1 = new();
    C2 c2 = new();
    integer z;
    void'(c1.randomize());
    // The calls to 'randomize()' are independent of the '$random' system call.
    // If one uncomments the following line above, there is no change in the
    // values assigned to 'c1.x' and 'c2.y'.
    // z = $random;
    void'(c2.randomize());
  end

endmodule
