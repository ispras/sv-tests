// IEEE Std 1800-2012
//   10. Assignment statements
//    10.11 Net aliasing

// ! TYPE: NEGATIVE

module top(inout wire [15:0] bus16, inout wire [11:0] low12, high12);
  // This alternative is also illegal because the bits of 'bus16'
  // are being aliased to itself:
  alias bus16 = {high12, bus16[3:0]} = {bus16[15:12], low12};
endmodule
