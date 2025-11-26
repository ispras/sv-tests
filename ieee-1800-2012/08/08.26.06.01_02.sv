// IEEE Std 1800-2012
//   8. Classes
//    8.26 Interface classes
//     8.26.6 Name conflicts and resolution
//      8.26.6.1 Method name conflict resolution

// ! TYPE: NEGATIVE

module top;

  interface class IntfBaseA;
    pure virtual function bit funcBase();
  endclass

  interface class IntfBaseB;
    pure virtual function string funcBase();
  endclass

  class ClassA implements IntfBaseA, IntfBaseB;
    virtual function bit funcBase();
      return (0);
    endfunction
  endclass

endmodule
