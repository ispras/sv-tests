// IEEE Std 1800-2012
//   17. Checkers
//    17.3 Checker instantiation

// ! TYPE: POSITIVE

`define MAX_SUM 100

checker c1(event clk, logic[7:0] a, b);
  logic [7:0] sum;
  always_ff @(clk) begin
    sum <= a + 1'b1;
    p0: assert property (sum < `MAX_SUM);
  end

  p1: assert property (@clk sum < `MAX_SUM);
  p2: assert property (@clk a != b);
  p3: assert #0 ($onehot(a));
endchecker

module top(input logic rst, clk, logic en,
           logic[7:0] in1, in2, in_array [20:0]);

  c1 check_outside(posedge clk, in1, in2);
  always @(posedge clk) begin
    automatic logic [7:0] v1 = 0;
    if (en) begin
      // 'v1' is automatic, so current procedural value is used
      c1 check_inside(posedge clk, in1, v1);
    end

    for (int i = 0; i < 4; i++) begin
      v1 = v1 + 5;
      if (i != 2) begin
        // 'v1' is automatic, so current procedural value is used
        c1 check_loop(posedge clk, in1, in_array[v1]);
      end
    end
  end

endmodule
