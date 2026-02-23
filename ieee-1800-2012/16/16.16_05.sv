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

  default clocking master_clk ; // master clock as defined above

  property p4; (a ##2 b); endproperty

  assert property (p4);

endmodule
