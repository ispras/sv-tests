// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.7 In-line constraints—randomize() with
//     18.7.1 local:: Scope resolution

// ! TYPE: POSITIVE

module top;

  class C;
    rand integer x;
  endclass

  function int F(C obj, integer x);
    F = obj.randomize() with {x < local::x;};
  endfunction

endmodule
