// IEEE Std 1800-2012
//   3. Design and verification building blocks
//    3.14 Simulation time units and precision
//     3.14.2 Specifying time units and precision
//      3.14.2.1 The `timescale compiler directive

// ! TYPE: POSITIVE

`timescale 1ns/10ps
module A (output logic y);
  initial begin
    y = 1'b0;
    #1ps y = 1'b1; // < 10ps
    #0.01 y = 1'b0; // 0.01 ns = 10 ps
  end
endmodule

module B (output logic y);
  initial begin
    y = 1'b0;
    #0.005 y = 1'b1; // 0.005 ns = 5 ps
    #0.50 y = 1'b0; // 0.50 ns = 500 ps
  end
endmodule

`timescale 1ps/1ps
module C (output logic y);
  initial begin
    y = 1'b0;
    #1ps y = 1'b1; // 1 ps
    #10ps y = 1'b0; // 10 ps
  end
endmodule

module top;
  logic yA, yB, yC;
  A uA(.y(yA));
  B uB(.y(yB));
  C uC(.y(yC));
endmodule
