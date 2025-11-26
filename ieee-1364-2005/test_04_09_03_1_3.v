// IEEE Std 1364-2005
//   4. Data types
//    4.9 Arrays
//      4.9.3 Memories
//        4.9.3.1 Array examples
//          4.9.3.1.3 Memory differences

// ! TYPE: POSITIVE

module test;
  parameter n = 32;
  reg [1:n] rega; // An n-bit register is not the same
  reg mema [1:n]; // as a memory of n 1-bit registers
endmodule
