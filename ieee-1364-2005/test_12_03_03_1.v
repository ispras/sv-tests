// IEEE Std 1364-2005
//   12. Hierarchical structures
//     12.3 Ports
//       12.3.3 Port declarations
//         If a port declaration does not include a net or variable type, then the port can be again
//         declared in a net or variable declaration. If the net or variable is declared as a
//         vector, the range specification between the two declarations of a port shall be
//         identical. Once a name is used in a port declaration, it shall not be declared again in
//         another port declaration or in a data type declaration.

// ! TYPE: VARYING

module test(aport);

  input aport; // First declaration - okay.

`ifdef NEGATIVE_TEST
  input aport; // Error - multiple declaration, port declaration
  output aport; // Error - multiple declaration, port declaration
`endif

endmodule
