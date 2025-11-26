// IEEE Std 1800-2012
//   8. Classes
//    8.26 Interface classes
//     8.26.2 Extends versus implements

// ! TYPE: POSITIVE

module top;

  interface class IntfClass;
    pure virtual function bit funcBase();
    pure virtual function bit funcExt();
  endclass

  class BaseClass;
    virtual function bit funcBase();
      return (1);
    endfunction
  endclass

  class ExtClass extends BaseClass implements IntfClass;
    virtual function bit funcExt();
      return (0);
    endfunction
  endclass

endmodule
