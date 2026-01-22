// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.3 Module instances (hierarchy)
//     23.3.3 Port connection rules
//      23.3.3.7 Port connections with dissimilar net types
//               (net and port collapsing)
//       23.3.3.7.1 Port connections with interconnect net types

// ! TYPE: POSITIVE

module top;
  interconnect iwire;
  dut1 child1(iwire);
  dut2 child2(iwire);
endmodule

module dut1(inout wire w);
  assign w = 1;
endmodule

module dut2(inout wand w);
  assign w = 0;
endmodule
