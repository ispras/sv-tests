// IEEE Std 1800-2012
//   6. Data types
//    6.7 Net declarations
//     6.7.1 Net declarations with built-in net types

// ! TYPE: POSITIVE

module top;
  trireg (large) logic #(0, 0, 0) cap1;
  typedef logic [31:0] addressT;
  wire addressT w1;
  wire struct packed {logic ecc; logic [7:0] data;} memsig;

  wire w; // equivalent to 'wire logic w;'
  wire [15:0] ww; // equivalent to 'wire logic [15:0] ww;'
endmodule
