// IEEE Std 1800-2012
//   8. Classes
//    8.21 Abstract classes and pure virtual methods

// ! TYPE: POSITIVE

module top;

  virtual class BasePacket;
    pure virtual function integer send(bit[31:0] data); // No implementation
  endclass

  class EtherPacket extends BasePacket;
    virtual function integer send(bit[31:0] data); // Will return 'x
    endfunction
  endclass

endmodule
