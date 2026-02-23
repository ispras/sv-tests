// IEEE Std 1800-2012
//   16. Assertions
//    16.3 Immediate assertions

// ! TYPE: POSITIVE

module top(clk, req1, req2);

  input clk, req1, req2;
  reg state, REQ;
  time t;

  always @(posedge clk) begin
    if (state == REQ) begin
      assert(req1 || req2);
    end
    else begin
      t = $time;
      #5 $display("assert failed at time %0t", t);
    end
  end

endmodule
