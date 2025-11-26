// IEEE Std 1800-2012
//   8. Classes
//    8.26 Interface classes
//     8.26.2 Extends versus implements

// ! TYPE: POSITIVE

module top;

  interface class IntfClass;
    pure virtual function void f();
  endclass

  class BaseClass;
    function void f();
      $display("Called BaseClass::f()");
    endfunction
  endclass

  class ExtClass extends BaseClass implements IntfClass;
    virtual function void f();
      $display("Called ExtClass::f()");
    endfunction
  endclass

endmodule
