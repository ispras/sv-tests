// IEEE Std 1364-2005
//   16. Backannotation using the standard delay format (SDF)
//     16.2 Mapping of SDF constructs to Verilog
//       16.2.1 Mapping of SDF delay constructs to Verilog declarations
//          In the following example, the rise/fall times of 1.3 and 1.7 are annotated to both
//          specify paths.

// ! TYPE: POSITIVE

module test(mode, sel, zout);

  input mode, sel;
  output zout;

  specify
    if (!mode) (sel => zout) = 0;
    if (mode) (sel => zout) = 0;
  endspecify
endmodule
