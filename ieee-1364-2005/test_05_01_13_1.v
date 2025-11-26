// IEEE Std 1364-2005
//   5. Expressions
//    5.1 Operators
//      5.1.13 Conditional operator

// ! TYPE: POSITIVE

module test;

  reg drive_busa;
  reg [15:0] data;

  wire [15:0] busa = drive_busa ? data : 16'bz;
endmodule
