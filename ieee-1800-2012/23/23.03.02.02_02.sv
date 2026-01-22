// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.3 Module instances (hierarchy)
//     23.3.2 Module instantiation syntax
//      23.3.2.2 Connecting module instance ports by name

// ! TYPE: NEGATIVE

module top;
  A ia(.i(a), .i(b), // illegal connection of input port twice
       .o(c), .o(d), // illegal connection of output port twice
       .e(e), .e(f)); // illegal connection of inout port twice
endmodule

module A(input i, output o, inout e);
endmodule
