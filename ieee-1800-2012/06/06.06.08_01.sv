// IEEE Std 1800-2012
//   6. Data types
//    6.6 Net types
//     6.6.8 Generic interconnect

// ! TYPE: POSITIVE

package NetsPkg;
  nettype real realNet;
endpackage : NetsPkg

module top();
  interconnect [0:1] iBus;
  lDriver l1(iBus[0]);
  rDriver r1(iBus[1]);
  rlMod m1(iBus);
endmodule : top

module lDriver(output wire logic out);
endmodule : lDriver

module rDriver
  import NetsPkg::*;
  (output realNet out);
endmodule : rDriver

module rlMod(input interconnect [0:1] iBus);
  lMod l1(iBus[0]);
  rMod r1(iBus[1]);
endmodule : rlMod

module lMod(input interconnect [0:1] iBus);
endmodule : lMod

module rMod(input interconnect [0:1] iBus);
endmodule : rMod
