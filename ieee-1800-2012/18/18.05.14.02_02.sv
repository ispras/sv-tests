// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.5 Constraint blocks
//     18.5.14 Soft constraints
//      18.5.14.2 Discarding soft constraints

// ! TYPE: POSITIVE

module top;

  class B;
    rand int x;
    constraint B1 {soft x == 5;}
    constraint B2 {disable soft x; soft x dist {5, 8};}
  endclass

  initial begin
    B b = new();
    b.randomize();
  end

endmodule
