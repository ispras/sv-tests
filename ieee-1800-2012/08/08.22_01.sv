// IEEE Std 1800-2012
//   8. Classes
//    8.22 Polymorphism: dynamic method lookup

// ! TYPE: POSITIVE

module top;

  virtual class BasePacket;
    pure virtual function integer send(bit[31:0] data);
  endclass

  class EtherPacket extends BasePacket;
    virtual function integer send(bit[31:0] data);
    endfunction
  endclass

  class TokenPacket extends BasePacket;
    virtual function integer send(bit[31:0] data);
    endfunction
  endclass

  class GPSPacket extends EtherPacket;
    virtual function integer send(bit[31:0] data);
    endfunction
  endclass

  BasePacket packets[100];

  EtherPacket ep = new; // extends 'BasePacket'
  TokenPacket tp = new; // extends 'BasePacket'
  GPSPacket gp = new; // extends 'EtherPacket'

  initial begin
    packets[0] = ep;
    packets[1] = tp;
    packets[2] = gp;
  end

endmodule
