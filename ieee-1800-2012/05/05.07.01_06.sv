// IEEE Std 1800-2012
//   5. Lexical conventions
//    5.7 Numbers
//     5.7.1 Integer literal constants

// ! TYPE: POSITIVE

module top;
  reg [31:0] unsized_dec = 27_195_000;
  reg [15:0] bin_16bit = 16'b0011_0101_0001_1111;
  reg [31:0] hex_32bit = 32'h12ab_f001;
endmodule