// IEEE Std 1800-2012
//   3. Design and verification building blocks
//    3.14 Simulation time units and precision
//     3.14.2 Specifying time units and precision
//      3.14.2.2 The timeunit and timeprecision keywords

// ! TYPE: POSITIVE

module D (output logic y);
  timeunit      100ps;
  timeprecision 10fs;

  initial begin
    y = 1'b0;
    #100ps  y = 1'b1;
    #10fs   y = 1'b0;
  end
endmodule

module E (output logic y);
  timeunit 100ps / 10fs;

  initial begin
    y = 1'b0;
    #200ps  y = 1'b1;
    #20fs   y = 1'b0;
  end
endmodule

module top;
  timeunit 1ps / 1ps;
  logic yD, yE;
  D uD(.y(yD));
  E uE(.y(yE));
endmodule
