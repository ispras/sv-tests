// IEEE Std 1800-2012
//   16. Assertions
//    16.14 Concurrent assertions
//     16.14.6 Embedding concurrent assertions in procedural code
//      16.14.6.1 Arguments to procedural concurrent assertions

// ! TYPE: POSITIVE

module top(clk);

input clk;
wire w;
reg [10:0] foo;
reg [10:0] bar;
reg my_activation_condition;

always @(posedge clk) begin : procedural_block_1
  integer i;
  if (my_activation_condition == 1) begin
    for (i=0; i<2; i=i+1) begin
      a7: assume property (foo[i] |=> bar[i] ##1 (w==1'b1));
    end
  end
end

endmodule
