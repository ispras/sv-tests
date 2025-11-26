// IEEE Std 1364-2005
//   12. Hierarchical structures
//     12.3 Ports
//       12.3.6 Connecting module instance ports by name
//         Multiple module instance port connections are not allowed, e.g., the following example is
//         illegal. This example shows illegal port connections.

// ! TYPE: VARYING

module test;

`ifdef NEGATIVE_TEST
  a ia (.i (a), .i (b),  // illegal connection of input port twice.
        .o (c), .o (d),  // illegal connection of output port twice.
        .e (e), .e (f)); // illegal connection of inout port twice.
`endif
endmodule
