// IEEE Std 1800-2012
//   10. Assignment statements
//    10.11 Net aliasing

// ! TYPE: NEGATIVE

module top(inout wire [15:0] bus16, inout wire [11:0] low12, high12);
  // The following version of the code above would be illegal because the
  // top 4 bits and bottom 4 bits are the same in both statements:
  alias bus16_0 = {high12[11:8], low12};
  alias bus16_1 = {high12, low12[3:0]};
endmodule
