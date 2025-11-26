// IEEE Std 1800-2012
//   16. Assertions
//    16.16 Clock resolution

// ! TYPE: POSITIVE

module top();

logic a;
logic b;
logic clk;

property p3; @(posedge clk) not (a ##2 b); endproperty

assert property (p3);

endmodule
