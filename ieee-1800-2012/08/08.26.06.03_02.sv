// IEEE Std 1800-2012
//   8. Classes
//    8.26 Interface classes
//     8.26.6 Name conflicts and resolution
//      8.26.6.3 Diamond relationship

// ! TYPE: POSITIVE

module top;

  interface class IntfBase #(type T = int);
    pure virtual function bit funcBase();
  endclass

  interface class IntfExt1 extends IntfBase#(bit);
    pure virtual function bit funcExt1();
  endclass

  interface class IntfExt2 extends IntfBase#(logic);
    pure virtual function bit funcExt2();
  endclass

  interface class IntfFinal extends IntfExt1, IntfExt2;
    typedef bit T; // Override the conflicting identifier name
    pure virtual function bit funcBase();
  endclass

endmodule
