// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.15 Manually seeding randomize

// ! TYPE: POSITIVE

module top;

  class Packet;
    rand bit[15:0] header;
    function new (int seed);
      this.srandom(seed);
    endfunction
  endclass

  Packet p = new(200); // Create 'p' with seed '200'.
  initial p.srandom(300); // Re-seed 'p' with seed '300'.

endmodule
