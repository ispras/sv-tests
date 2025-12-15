// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.9 Controlling constraints with constraint_mode()

// ! TYPE: POSITIVE

module top;

  class Packet;
    rand integer source_value;
    int m;
    constraint filter1 {source_value > 2 * m;}
  endclass

  function integer toggle_rand(Packet p);
    if (p.filter1.constraint_mode())
      p.filter1.constraint_mode(0);
    else
      p.filter1.constraint_mode(1);
    toggle_rand = p.randomize();
  endfunction

endmodule
