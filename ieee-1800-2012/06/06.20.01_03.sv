// IEEE Std 1800-2012
//   6. Data types
//    6.20 Constants
//     6.20.1 Parameter declaration syntax

// ! TYPE: POSITIVE

module top;
  class Mem #(type T, int size);
    T words[size];
    // ...
  endclass

  typedef Mem#(byte, 1024) Kbyte;
endmodule
