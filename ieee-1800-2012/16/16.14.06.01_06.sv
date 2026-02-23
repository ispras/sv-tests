// IEEE Std 1800-2012
//   16. Assertions
//    16.14 Concurrent assertions
//     16.14.6 Embedding concurrent assertions in procedural code
//      16.14.6.1 Arguments to procedural concurrent assertions

// ! TYPE: POSITIVE

module top(clk, a, b, c);

  input clk;
  input a;
  input b;
  input c;
  logic en;

  property p1(logic a, logic b, logic c);
    @(posedge clk) a |-> (b && c);
  endproperty

  always @(posedge clk) begin
    en = (a && b);
    if (en) begin
      a9: assert property (p1(a, b, c));
    end

    if ($sampled(en)) begin
      a10: assert property (p1(a, b, c));
    end
  end

endmodule
