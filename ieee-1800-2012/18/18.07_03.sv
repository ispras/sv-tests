// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.7 In-line constraints—randomize() with

// ! TYPE: POSITIVE

module top;

  class C;
    rand integer x;
  endclass

  function int F(C obj, integer y);
    F = obj.randomize() with (x) {x < y;};
  endfunction

endmodule
