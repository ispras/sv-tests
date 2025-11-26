// IEEE Std 1364-2005
//   16. Backannotation using the standard delay format (SDF)
//     16.2 Mapping of SDF constructs to Verilog
//       16.2.3 SDF annotation of specparams

// ! TYPE: POSITIVE

module clock(clk);

  output clk;
  reg clk;
  specparam dhigh = 0, dlow = 0;

  initial clk = 0;

  always
    begin
      #dhigh clk = 1; // Clock remains low for time dlow
                      // before transitioning to 1
      #dlow  clk = 0; // Clock remains high for time dhigh
                      // before transitioning to 0
    end // BUG: ;
endmodule
