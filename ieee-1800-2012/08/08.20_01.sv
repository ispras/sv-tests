// IEEE Std 1800-2012
//   8. Classes
//    8.20 Virtual methods

// ! TYPE: POSITIVE

module top;

  class BasePacket;
    int A = 1;
    int B = 2;
    function void printA;
      $display("BasePacket::A is %d", A);
    endfunction : printA

    virtual function void printB;
      $display("BasePacket::B is %d", B);
    endfunction : printB
  endclass : BasePacket

  class My_Packet extends BasePacket;
    int A = 3;
    int B = 4;
    function void printA;
      $display("My_Packet::A is %d", A);
    endfunction: printA

    virtual function void printB;
      $display("My_Packet::B is %d", B);
    endfunction : printB
  endclass : My_Packet

  BasePacket P1 = new;
  My_Packet P2 = new;
  initial begin
    P1.printA; // displays 'BasePacket::A is 1'
    P1.printB; // displays 'BasePacket::B is 2'
    P1 = P2; // 'P1' has a handle to a 'My_packet' object
    P1.printA; // displays 'BasePacket::A is 1'
    P1.printB; // displays 'My_Packet::B is 4' – latest derived method
    P2.printA; // displays 'My_Packet::A is 3'
    P2.printB; // displays 'My_Packet::B is 4'
  end

endmodule
