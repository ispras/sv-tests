// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.9 Structured procedures
//       9.9.1 Initial construct
//         Another typical usage of the initial construct is specification of waveform descriptions
//         that execute once to provide stimulus to the main part of the circuit being simulated.

// ! TYPE: POSITIVE

module test;

  reg [5:0] inputs;

  initial begin
    inputs = 'b000000;     // initialize at time zero
    #10 inputs = 'b011001; // first pattern
    #10 inputs = 'b011011; // second pattern
    #10 inputs = 'b011000; // third pattern
    #10 inputs = 'b001000; // last pattern
  end
endmodule
