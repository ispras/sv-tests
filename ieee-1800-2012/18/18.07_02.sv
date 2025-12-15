// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.7 In-line constraints—randomize() with

// ! TYPE: POSITIVE

module top;

  class C1;
    rand integer x;
  endclass

  class C2;
    integer x;
    integer y;
    task doit(C1 f, integer x, integer z);
      int result;
      result = f.randomize() with {x < y + z;};
    endtask
  endclass

endmodule
