// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.2 Module definitions
//     23.2.2 Port declarations
//      23.2.2.2 ANSI style list of port declarations

// ! TYPE: POSITIVE

interface d;
endinterface

interface j;
endinterface

module test(interface d, interface j);
endmodule

module top();

  d intf_d();
  j intf_j();
  test test1(.d(intf_d), .j(intf_j));

endmodule
