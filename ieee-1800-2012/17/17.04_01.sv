// IEEE Std 1800-2012
//   17. Checkers
//    17.4 Context inference

// ! TYPE: POSITIVE

// Context inference in a checker
checker check_in_context (logic test_sig,
                          event clock = $inferred_clock,
                          logic reset = $inferred_disable);

  property p(logic sig);
    sig;
  endproperty

  a1: assert property (@clock disable iff (reset) p(test_sig));
  c1: cover property (@clock !reset throughout !test_sig ##1 test_sig);
endchecker : check_in_context

module top(logic rst);

  wire clk;
  logic a, en;
  wire b = a && en;

  // No context inference
  check_in_context my_check1(.test_sig(b), .clock(clk), .reset(rst));
  always @(posedge clk) begin
    a <= 1;
    if (en) begin
      // inferred from context:
      // '.clock(posedge clk)'
      // '.reset(1'b0)'
      check_in_context my_check2(a);
    end
    en <= 1;
  end

endmodule
