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

  // Assume for this example that (posedge clk) will not occur at time 0
  always @(posedge clk) begin : loop
    integer i;
    for (i = 0; i < 10; i = i + 1) begin
      a1: assert property (foo[i] && bar[i]);
      // a2: assert property (foo[const'(i)] && bar[i]);
      // a3: assert property (foo[const'(i)] && bar[const'(i)]);
    end
  end

endmodule
