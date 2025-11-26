// IEEE Std 1364-2005
//   16. Backannotation using the standard delay format (SDF)
//     16.2 Mapping of SDF constructs to Verilog
//       16.2.2 Mapping of SDF timing check constructs to Verilog

// ! TYPE: VARYING

module test(clk, mode, data);

  input clk, mode, data;

  reg ntfr;

  specify
    $setuphold(posedge clk &&&  mode, data, 1, 1, ntfr); // Annotated
`ifdef NEGATIVE_TEST
    $setuphold(negedge clk &&& !mode, data, 1, 1, ntfr); // Not annotated
`endif
  endspecify
endmodule
