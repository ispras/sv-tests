// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.8 Block statements
//       9.8.1 Sequential blocks
//         The following example shows how the combination of the sequential block and delay control
//         can be used to specify a time-sequenced waveform.

// ! TYPE: POSITIVE

module test;

  event end_wave;
  parameter d = 50; // d declared as a parameter and
  reg [7:0] r;      // r declared as an 8-bit reg

  initial begin     // a waveform controlled by sequential delay
    #d r = 'h35;
    #d r = 'hE2;
    #d r = 'h00;
    #d r = 'hF7;
    #d -> end_wave; // trigger an event called end_wave
  end
endmodule
