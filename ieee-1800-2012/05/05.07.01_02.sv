// IEEE Std 1800-2012
//   5. Lexical conventions
//    5.7 Numbers
//     5.7.1 Integer literal constants

// ! TYPE: POSITIVE

module top;
  reg [3:0] bin = 4'b1001; // is a 4-bit binary number
  reg [4:0] dec = 5'D3; // is a 5-bit decimal number
  reg [2:0] x_val = 3'b01x; // is a 3-bit number with the least
                            // significant bit unknown
  reg [11:0] unknown = 12'hx; // is a 12-bit unknown number
  reg [15:0] z_val = 16'hz; // is a 16-bit high-impedance number
endmodule