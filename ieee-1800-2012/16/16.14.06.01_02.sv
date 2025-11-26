// IEEE Std 1800-2012
//   16. Assertions
//    16.14 Concurrent assertions
//     16.14.6 Embedding concurrent assertions in procedural code
//      16.14.6.1 Arguments to procedural concurrent assertions

// ! TYPE: POSITIVE

module top(input clk);

reg [10:0] foo;
reg [10:0] bar;
genvar i;

default clocking @(posedge clk); endclocking

generate for (i=0; i<10; i=i+1) begin
  a1: assert property (foo[10] && bar[10]);
  a2: assert property (foo[i] && bar[10]);
  a3: assert property (foo[i] && bar[i]);
end
endgenerate

endmodule
