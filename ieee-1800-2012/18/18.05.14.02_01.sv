// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.5 Constraint blocks
//     18.5.14 Soft constraints
//      18.5.14.2 Discarding soft constraints

// ! TYPE: POSITIVE

module top;

  class A;
    rand int x;
    constraint A1 {soft x == 3;}
    constraint A2 {disable soft x;} // discard soft constraints
    constraint A3 {soft x inside {1, 2};}
  endclass

  initial begin
    A a = new();
    a.randomize();
  end

endmodule
