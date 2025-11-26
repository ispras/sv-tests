// IEEE Std 1800-2012
//   8. Classes
//    8.13 Inheritance and subclasses

// ! TYPE: POSITIVE

module top;

  class Packet;
    integer addr;
    integer data;

    function new(integer addr, integer data);
      this.addr = addr;
      this.data = data;
    endfunction
  endclass

  class LinkedPacket_Composition;
    Packet packet_c;
    LinkedPacket_Composition next;

    function new(integer addr, integer data);
      packet_c = new(addr, data);
    endfunction

    function LinkedPacket_Composition get_next();
      return next;
    endfunction
  endclass

  class LinkedPacket_Inheritance extends Packet;
    LinkedPacket_Inheritance next;

    function new(integer addr, integer data);
      super.new(addr, data);
    endfunction

    function LinkedPacket_Inheritance get_next();
      return next;
    endfunction
  endclass

endmodule
