// IEEE Std 1800-2012
//   6. Data types
//    6.6 Net types
//     6.6.8 Generic interconnect

// ! TYPE: POSITIVE

module top();
  interconnect [0:1] aBus [0:3];
  logic [0:3] dBus;
  driver driverArray[0:3](aBus);
  cmp cmpArray[0:3](aBus, rst, dBus);
endmodule : top
