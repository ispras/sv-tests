// IEEE Std 1364-2005
//   4. Data types
//    4.3 Vectors
//      4.3.1 Specifying vectors

// ! TYPE: POSITIVE

module test;
  wand w;                      // a scalar net of type "wand"
  tri [15:0] busa;             // a three-state 16-bit bus
  trireg (small) storeit;      // a charge storage node of strength small
  reg a;                       // a scalar reg
  reg [3:0] v;                 // a 4-bit vector reg made up of (from most to
                               // least significant)v[3], v[2], v[1], and v[0]
  reg signed [3:0] signed_reg; // a 4-bit vector in range -8 to 7
  reg [-1:4] b;                // a 6-bit vector reg
  wire w1, w2;                 // declares two wires
  reg [4:0] x, y, z;           // declares three 5-bit regs
endmodule
