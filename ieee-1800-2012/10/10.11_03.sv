// IEEE Std 1800-2012
//   10. Assignment statements
//    10.11 Net aliasing

// ! TYPE: POSITIVE

module top(inout wire [15:0] bus16, inout wire [11:0] low12, high12);
  alias bus16[11:0] = low12;
  alias bus16[15:4] = high12;
endmodule
