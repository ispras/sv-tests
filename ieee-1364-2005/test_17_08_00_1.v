// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.8 Conversion functions
//       The following example shows how the $realtobits and $bitstoreal functions are used
//       in port connections.

// ! TYPE: POSITIVE

module driver(net_r);
  output net_r;
  real r;
  wire [64:1] net_r = $realtobits(r);
endmodule

module receiver(net_r);
  input net_r;
  wire [64:1] net_r;
  real r;
  initial assign r = $bitstoreal(net_r);
endmodule
