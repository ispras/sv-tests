// IEEE Std 1800-2012
//   8. Classes
//    8.26 Interface classes
//     8.26.4 Type usage restrictions

// ! TYPE: NEGATIVE

module top;

  typedef interface class IntfD;

  class ClassB implements IntfD #(bit); // illegal
    virtual function bit[1:0] funcD();
  endclass : ClassB

  // This interface class declaration must be declared before 'ClassB'
  interface class IntfD #(type T1 = logic);
    typedef T1[1:0] T2;
    pure virtual function T2 funcD();
  endclass : IntfD

endmodule
