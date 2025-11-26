// IEEE Std 1800-2012
//   8. Classes
//    8.12 Assignment, renaming, and copying

// ! TYPE: POSITIVE

module top;

  class Packet;
  integer x;
    function new;
      x = 1;
    endfunction
  endclass

  Packet p1;
  Packet p2;
  Packet p3;

  initial begin
    p1 = new;
    p2 = p1;
    p3 = new p1;
  end

endmodule
