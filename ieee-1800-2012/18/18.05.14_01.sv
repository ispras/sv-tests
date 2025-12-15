// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.5 Constraint blocks
//     18.5.14 Soft constraints

// ! TYPE: POSITIVE

module top;

  class Packet;
    rand int length;
    constraint deflt {soft length inside {32, 1024};}
  endclass

  Packet p = new();
  initial p.randomize() with {length == 1512;};

endmodule
