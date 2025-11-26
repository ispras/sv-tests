// IEEE Std 1800-2012
//   8. Classes
//    8.26 Interface classes
//     8.26.6 Name conflicts and resolution
//      8.26.6.2 Parameter and type declaration inheritance conflicts and resolution

// ! TYPE: POSITIVE

module top;

  interface class PutImp#(type T = logic);
    pure virtual function void put(T a);
  endclass

  interface class GetImp#(type T = logic);
    pure virtual function T get();
  endclass

  interface class PutGetIntf#(type TYPE = logic)
                  extends PutImp#(TYPE), GetImp#(TYPE);
    typedef TYPE T;
  endclass

endmodule
