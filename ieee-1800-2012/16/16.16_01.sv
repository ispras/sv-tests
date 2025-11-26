// IEEE Std 1800-2012
//   16. Assertions
//    16.16 Clock resolution

// ! TYPE: POSITIVE

module top();

logic a;
logic b;
logic clk;

sequence s2; @(posedge clk) a ##2 b; endsequence

property p2; not s2; endproperty

assert property (p2);

endmodule
