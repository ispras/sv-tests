// IEEE Std 1800-2012
//   8. Classes
//    8.15 Super

// ! TYPE: POSITIVE

module top;

  class Packet; // base class
    integer value;

    function integer delay();
      delay = value * value;
    endfunction
  endclass

  class LinkedPacket extends Packet; // derived class
    integer value;

    function integer delay();
      delay = super.delay() + value * super.value;
    endfunction
  endclass

endmodule
