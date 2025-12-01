// IEEE Std 1800-2012
//   14. Clocking blocks
//    14.3 Clocking block declaration

// ! TYPE: POSITIVE

module top(input clk, in1, in2, output out1, out2);

  clocking ck1 @(posedge clk);
    default input #1step output negedge; // legal
    // outputs driven on the negedge 'clk'
    input in1;
    output out1;
  endclocking

  clocking ck2 @(clk); // no edge specified!
    default input #1step output negedge; // legal
    input in2;
    output out2;
  endclocking

endmodule
