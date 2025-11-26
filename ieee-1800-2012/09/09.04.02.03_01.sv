// IEEE Std 1800-2012
//   9. Processes
//    9.4 Procedural timing controls
//     9.4.2 Event control
//      9.4.2.3 Conditional event controls

// ! TYPE: POSITIVE

module top (output logic [31:0] y, input [31:0] a, input enable);
  always @(a iff enable == 1)
    y <= a; // latch is in transparent mode
endmodule
