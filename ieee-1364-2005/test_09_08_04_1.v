// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.8 Block statements
//       9.8.4 Start and finish times
//         The following example shows the statements from the example in 9.8.2 written in the
//         reverse order and still producing the same waveform.

// ! TYPE: POSITIVE

module test;

  event end_wave;
  reg [7:0] r;

  initial begin
    fork
      #250 -> end_wave;
      #200 r = 'hF7;
      #150 r = 'h00;
      #100 r = 'hE2;
      #50 r = 'h35;
    join
  end
endmodule
