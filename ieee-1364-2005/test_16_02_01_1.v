// IEEE Std 1364-2005
//   16. Backannotation using the standard delay format (SDF)
//     16.2 Mapping of SDF constructs to Verilog
//       16.2.1 Mapping of SDF delay constructs to Verilog declarations
//         In the following example, the source SDF signal sel matches the source Verilog signal,
//         and the destination SDF signal zout also matches the destination Verilog signal.
//         Therefore, the rise/fall times of 1.3 and 1.7 are annotated to the specify path.

// ! TYPE: POSITIVE

module test(sel, zout);

  input sel;
  output zout;

  specify
    (sel => zout) = 0;
  endspecify
endmodule
