// IEEE Std 1800-2012
//   8. Classes
//    8.18 Data hiding and encapsulation

// ! TYPE: POSITIVE

module top;

  class Packet;
    local integer i;

    function integer compare (Packet other);
      compare = (this.i == other.i);
    endfunction
  endclass

endmodule
