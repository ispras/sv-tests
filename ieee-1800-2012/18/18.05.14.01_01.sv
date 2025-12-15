// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.5 Constraint blocks
//     18.5.14 Soft constraints
//      18.5.14.1 Soft constraint priorities

// ! TYPE: POSITIVE

module top;

  class B1;
    rand int x;
    constraint a {soft x > 10; soft x < 100;}
  endclass

  class D1 extends B1;
    constraint b {soft x inside {[5:9]};}
  endclass

  class B2;
    rand int y;
    constraint c {soft y > 10;}
  endclass

  class D2 extends B2;
    constraint d {soft y inside {[5:9]};}
    constraint e ;
    rand D1 p1;
    rand B1 p2;
    rand D1 p3;
    constraint f {soft p1.x < p2.x;}
  endclass

  constraint D2::e {soft y > 100;}

  D2 d = new();
  initial begin
    d.randomize() with {soft y inside {10, 20, 30}; soft y < p1.x;};
  end

endmodule
