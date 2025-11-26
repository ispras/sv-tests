// IEEE Std 1800-2012
//   8. Classes
//    8.26 Interface classes
//     8.26.6 Name conflicts and resolution
//      8.26.6.1 Method name conflict resolution

// ! TYPE: POSITIVE

module top;

  interface class IntfBase1;
    pure virtual function bit funcBase();
  endclass

  interface class IntfBase2;
    pure virtual function bit funcBase();
  endclass

  virtual class ClassBase;
    pure virtual function bit funcBase();
  endclass

  class ClassExt extends ClassBase implements IntfBase1, IntfBase2;
    virtual function bit funcBase();
      return (0);
    endfunction
  endclass

endmodule
