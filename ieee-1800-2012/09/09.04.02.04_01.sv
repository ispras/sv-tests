// IEEE Std 1800-2012
//   9. Processes
//    9.4 Procedural timing controls
//     9.4.2 Event control
//      9.4.2.4 Sequence events

// ! TYPE: POSITIVE

module top;

  reg clk, a, b, c;

  sequence abc;
    @(posedge clk) a ##1 b ##1 c;
  endsequence

  program test;
    initial begin
      @ abc $display("Saw a-b-c");
      L1: $display("Saw L1");
    end
  endprogram

endmodule
