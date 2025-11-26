// IEEE Std 1800-2012
//   16. Assertions
//    16.14 Concurrent assertions
//     16.14.6 Embedding concurrent assertions in procedural code
//      16.14.6.4 Disabling procedural concurrent assertions

// ! TYPE: POSITIVE

module top(clk, bad_val, bad_val_ok);

input clk;
input bad_val;
input bad_val_ok;

default clocking @(posedge clk); endclocking

always @(bad_val or bad_val_ok) begin : b1
  a1: assert property (bad_val) else $fatal(1, "Sorry");
  if (bad_val_ok) begin
    disable a1;
  end
end

endmodule
