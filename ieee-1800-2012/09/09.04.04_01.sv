// IEEE Std 1800-2012
//   9. Processes
//    9.4 Procedural timing controls
//     9.4.4 Level-sensitive sequence controls

// ! TYPE: POSITIVE

module top(input clk);

  reg a, b, c, d, e;

  sequence abc;
    @(posedge clk) a ##1 b ##1 c;
  endsequence

  sequence de;
    @(negedge clk) d ##[2:5] e;
  endsequence

  program check;
    initial begin
      wait( abc.triggered || de.triggered );
      if( abc.triggered )
        $display("abc succeeded");
      if( de.triggered )
        $display("de succeeded");
      L2: $display("L2");
    end
  endprogram

endmodule
