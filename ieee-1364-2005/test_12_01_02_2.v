// IEEE Std 1364-2005
//   12. Hierarchical structures
//     12.1 Modules
//       12.1.2 Module instantiation
//         The following example creates two instances of the flip-flop module ffnand defined in
//         Example 1. It connects only to the q output in one instance and only to the qbar output
//         in the other instance.

// Lower level module:
// module description of a nand flip-flop circuit

// ! TYPE: POSITIVE

module ffnand(q, qbar, preset, clear);

  // declares 2 circuit output nets
  output q, qbar;

  // declares 2 circuit input nets
  input preset, clear;
  
  // declaration of two nand gates and their interconnections
  nand g1(q, qbar, preset),
       g2(qbar, q, clear);
endmodule

// a waveform description for testing
// the nand flip-flop, without the output ports
module ffnand_wave;

  reg in1, in2; // variables to drive the circuit
  parameter d = 10;

  // make two copies of the circuit ffnand
  // ff1 has qbar unconnected, ff2 has q unconnected
  ffnand ff1(out1, , in1, in2),
  ff2(.qbar(out2), .clear(in2), .preset(in1), .q());
  
  // ff3(.q(out3),.clear(in1),,,); is illegal

  // define the waveform to stimulate the circuit
  initial begin
    #d in1 = 0; in2 = 1;
    #d in1 = 1;
    #d in2 = 0;
    #d in2 = 1;
  end
endmodule
