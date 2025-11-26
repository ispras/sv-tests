// IEEE Std 1800-2012
//   3. Design and verification building blocks
//    3.11 Overview of hierarchy

// ! TYPE: POSITIVE

module top; // module with no ports
  logic in1, in2, select; // variable declarations
  wire out1; // net declaration

  mux2to1 m1 (.a(in1), .b(in2), .sel(select), .y(out1)); // module instance
endmodule: top

module mux2to1 (input wire a, b, sel, // combined port and type declaration
                output logic y);
  // netlist using built-in primitive instances
  not g1 (sel_n, sel);
  and g2 (a_s, a, sel_n);
  and g3 (b_s, b, sel);
  or g4 (y, a_s, b_s);
endmodule: mux2to1
