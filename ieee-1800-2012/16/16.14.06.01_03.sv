// IEEE Std 1800-2012
//   16. Assertions
//    16.14 Concurrent assertions
//     16.14.6 Embedding concurrent assertions in procedural code
//      16.14.6.1 Arguments to procedural concurrent assertions

// ! TYPE: POSITIVE

module top(clk);

input clk;
reg [10:0] foo;
reg [10:0] bar;

always @(posedge clk) begin
  // variable declared in for statement is automatic (see 12.7.1)
  integer i;
  for (int i=0; i<10; i++) begin
    a4: assert property (foo[i] && bar[i]);
    a5: assert property (foo[const'(i)] && bar[i]);
    a6: assert property (foo[const'(i)] && bar[const'(i)]);
  end
end

endmodule
