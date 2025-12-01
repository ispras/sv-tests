// IEEE Std 1800-2012
//   14. Clocking blocks
//    14.5 Hierarchical expressions

// ! TYPE: POSITIVE

module top(input clk, phi1, state);

  module cpu(output state);
  endmodule

  reg reg_s;
  cpu cpu1(.state(reg_s));

  clocking cd1 @(posedge phi1);
    input #1step state = top.cpu1.state;
  endclocking

endmodule
