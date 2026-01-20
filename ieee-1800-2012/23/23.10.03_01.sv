// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.10 Overriding module parameters
//     23.10.3 Parameter dependence

// ! TYPE: POSITIVE

module top;
  parameter
    word_size = 32,
    memory_size = word_size * 4096;
  parameter p = 1;
  parameter [p:0] p2 = 4;
  parameter type T = int;
  parameter T p3 = 7;
endmodule
