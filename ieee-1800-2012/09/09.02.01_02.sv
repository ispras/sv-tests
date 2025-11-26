// IEEE Std 1800-2012
//   9. Processes
//    9.2 Structured procedures
//     9.2.1 Initial procedures

// ! TYPE: POSITIVE

module top;

  logic [5:0] inputs;

  initial begin
    inputs = 'b000000; // initialize at time zero
    #10 inputs = 'b011001; // first pattern
    #10 inputs = 'b011011; // second pattern
    #10 inputs = 'b011000; // third pattern
    #10 inputs = 'b001000; // last pattern
  end

endmodule
