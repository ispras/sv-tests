// IEEE Std 1364-2005
//   12. Hierarchical structures
//     12.3 Ports
//       12.3.6 Connecting module instance ports by name
//         In the following example, the instantiating module connects its signals topA and topB to
//         the ports In1 and Out defined by the module ALPHA. At least one port provided by ALPHA
//         is unused; it is named In2. There could be other unused ports not mentioned in the
//         instantiation.

// ! TYPE: POSITIVE

module ALPHA(Out, In1, In2);
  output Out;
  input In1, In2;

endmodule

module test(topA, topB);
  input topA, topB;

  ALPHA instance1(.Out(topB), .In1(topA), .In2());
endmodule
