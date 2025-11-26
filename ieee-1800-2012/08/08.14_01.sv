// IEEE Std 1800-2012
//   8. Classes
//    8.14 Overridden members

// ! TYPE: POSITIVE

module top;

  class Packet;
    integer i = 1;
    function integer get();
      get = i;
    endfunction
  endclass

  class LinkedPacket extends Packet;
    integer i = 2;
    function integer get();
      get = -i;
    endfunction
  endclass


  LinkedPacket lp = new;
  Packet p = lp;
  integer j;

  initial begin
    j = p.i; // 'j = 1', not 2
    j = p.get(); // 'j = 1', not -1 or -2
  end
endmodule
