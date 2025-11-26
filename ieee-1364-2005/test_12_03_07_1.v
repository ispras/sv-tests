// IEEE Std 1364-2005
//   12. Hierarchical structures
//     12.3 Ports
//       12.3.7 Real numbers in port connections
//         The real data type shall not be directly connected to a port. It shall be connected
//         indirectly, as shown in the following example. The system functions $realtobits and
//         $bitstoreal shall be used for passing the bit patterns across module ports. (See 17.8 for
//         a description of these system tasks.)

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
