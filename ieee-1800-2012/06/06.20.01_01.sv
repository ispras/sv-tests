// IEEE Std 1800-2012
//   6. Data types
//    6.20 Constants
//     6.20.1 Parameter declaration syntax

// ! TYPE: POSITIVE

module top;
  class vector #(size = 1); // 'size' is a parameter in a parameter port list
    logic [size - 1:0] v;
  endclass

  typedef int word;
  interface simple_bus #(AWIDTH = 64, type T = word) // parameter port list
                        (input logic clk) ; // port list
  endinterface
endmodule
