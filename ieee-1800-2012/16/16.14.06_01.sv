// IEEE Std 1800-2012
//   16. Assertions
//    16.14 Concurrent assertions
//     16.14.6 Embedding concurrent assertions in procedural code

// ! TYPE: POSITIVE

module top(mclk, scanclk);

input mclk, scanclk;
reg q, d, d1;

property r1;
  q != d;
endproperty

always @(posedge mclk) begin
  q <= d1;
  r1_p1: assert property (r1);
  r1_p2: assert property (@(posedge scanclk) r1);
end

endmodule
