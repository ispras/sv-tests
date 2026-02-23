// IEEE Std 1800-2012
//   3. Design and verification building blocks
//    3.3 Modules

// ! TYPE: POSITIVE

module top (input wire a, b, sel, // combined port and type declaration
            output logic y);
  always_comb begin // procedural block
    if (sel) y = a; // procedural statement
    else y = b;
  end
endmodule: top
