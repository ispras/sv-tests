// IEEE Std 1800-2012
//   16. Assertions
//    16.14 Concurrent assertions
//     16.14.6 Embedding concurrent assertions in procedural code
//      16.14.6.2 Procedural assertion flush points

// ! TYPE: POSITIVE

module top(clk, data_in);

input clk;
input [3:0] data_in;
logic a;
logic b;

assign a = data_in[0];
assign b = data_in[1];

default clocking @(posedge clk); endclocking

always_comb begin : b1
  c1: cover property (const'(b) != const'(a));
end

endmodule
