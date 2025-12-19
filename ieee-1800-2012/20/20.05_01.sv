// IEEE Std 1800-2012
//   20. Utility system tasks and system functions
//    20.5 Conversion functions

// ! TYPE: POSITIVE

module driver (net_r);
  output [64:1] net_r;
  real r;
  wire [64:1] net_r = $realtobits(r);
endmodule

module receiver (net_r);
  input [64:1] net_r;
  wire [64:1] net_r;
  real r;
  initial assign r = $bitstoreal(net_r);
endmodule

module top(input [64:1] in, output [64:1] out);
  driver m1(in);
  receiver m2(out);
endmodule
