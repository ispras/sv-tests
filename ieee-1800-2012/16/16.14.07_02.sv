// IEEE Std 1800-2012
//   16. Assertions
//    16.14 Concurrent assertions
//     16.14.7 Inferred value functions

// ! TYPE: POSITIVE

module top(logic a, b, c, d, rst1, clk1, clk2);

  logic rst;

  a1: assert property (@(negedge clk1) disable iff (rst1)
                       a ##0 b[->1] |=> c);
  a2: assert property (@(posedge clk1) disable iff (1'b0)
                       a ##0 b[->1] |=> c);

  always @(posedge clk2 or posedge rst) begin
    if (rst1) begin
      ; // reset branch (no-op placeholder)
    end else begin
      ; // normal operation (no-op placeholder)
    end
  end

  a3: assert property
    (
      @(posedge clk2) disable iff (rst1)
      (a ##0 b[->1]) |=> c
    );

  a4: assert property (@(negedge clk2) a ##1 @(negedge clk1) b |=>
      @(posedge clk1) c ##1 d);

endmodule
