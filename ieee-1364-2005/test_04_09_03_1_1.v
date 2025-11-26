// IEEE Std 1364-2005
//   4. Data types
//    4.9 Arrays
//      4.9.3 Memories
//        4.9.3.1 Array examples
//          4.9.3.1.1 Array declarations

// ! TYPE: POSITIVE

module test;
  reg [7:0] mema[0:255];   // declares a memory mema of 256 8-bit
                           // registers. The indices are 0 to 255
  reg arrayb[7:0][0:255];  // declare a two-dimensional array of
                           // one bit registers
  wire w_array[7:0][5:0];  // declare array of wires
  integer inta[1:64];      // an array of 64 integer values
  time chng_hist[1:1000];  // an array of 1000 time values
  integer t_index;
endmodule
