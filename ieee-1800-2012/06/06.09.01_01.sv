// IEEE Std 1800-2012
//   6. Data types
//    6.9 Vector declarations
//     6.9.1 Specifying vectors

// ! TYPE: POSITIVE

module top;
  wand w; // a scalar 'wand' net
  tri [15:0] busa; // a 16-bit bus
  trireg (small) storeit; // a charge storage node of strength 'small'
  logic a; // a scalar variable
  logic[3:0] v; // a 4-bit vector made up of (from most to least significant)
                // 'v[3]', 'v[2]', 'v[1]', and 'v[0]'
  logic signed [3:0] signed_reg; // a 4-bit vector in range -8 to 7
  logic [-1:4] b; // a 6-bit vector
  wire w1, w2; // declares two nets
  logic [4:0] x, y, z; // declares three 5-bit variables
endmodule
