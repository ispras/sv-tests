// IEEE Std 1800-2012
//   16. Assertions
//    16.14 Concurrent assertions
//     16.14.6 Embedding concurrent assertions in procedural code

// ! TYPE: VARYING

module top(mclk);

input mclk;
reg q, q1, d, d1;

property r4;
  q != d;
endproperty

always @(posedge mclk) begin
  #10 q <= d1; // delay prevents clock inference
  @(negedge mclk) // event control prevents clock inference
  #10 q1 <= !d1;
  `ifdef NEGATIVE_TEST
    r4_p: assert property (r4); // no inferred clock
  `endif
end

endmodule
