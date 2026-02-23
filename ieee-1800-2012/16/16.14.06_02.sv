// IEEE Std 1800-2012
//   16. Assertions
//    16.14 Concurrent assertions
//     16.14.6 Embedding concurrent assertions in procedural code

// ! TYPE: POSITIVE

module top(clock, reset);

  input clock, reset;
  reg q, cnt, d, d1;

  property r2;
    q != d;
  endproperty

  always_ff @(posedge clock iff reset == 0 or posedge reset) begin
    cnt <= reset ? 0 : cnt + 1;
    q <= $past(d1);
    r2_p: assert property (r2);
  end

endmodule
