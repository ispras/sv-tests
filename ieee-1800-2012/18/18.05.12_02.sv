// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.5 Constraint blocks
//     18.5.12 Functions in constraints

// ! TYPE: POSITIVE

module top;

  class B;
    rand int x, y;
    function int F(int a);
    endfunction
    constraint C {x <= F(y);}
    constraint D {y inside {2, 4, 8};}
  endclass

endmodule
