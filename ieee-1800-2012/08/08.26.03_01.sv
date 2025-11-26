// IEEE Std 1800-2012
//   8. Classes
//    8.26 Interface classes
//     8.26.3 Type access

// ! TYPE: POSITIVE

module top;

  interface class IntfA #(type T1 = logic);
    typedef T1[1:0] T2;
    pure virtual function T2 funcA();
  endclass : IntfA

  interface class IntfB #(type T = bit) extends IntfA #(T);
    pure virtual function T2 funcB(); // legal, type 'T2' is inherited
  endclass : IntfB

endmodule
