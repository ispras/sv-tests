// IEEE Std 1800-2012
//   16. Assertions
//    16.16 Clock resolution

// ! TYPE: POSITIVE

module top();

  logic a;
  logic b;
  logic clk;

  clocking master_clk @(posedge clk);
    property p3; not (a ##2 b); endproperty
  endclocking

  assert property (master_clk.p3);

endmodule
