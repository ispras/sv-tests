// IEEE Std 1800-2012
//   14. Clocking blocks
//    14.16 Synchronous drives
//     14.16.1 Drives and nonblocking assignments

// ! TYPE: POSITIVE

module top(input clk);

  logic a, b, c;

  clocking cb @(posedge clk);
    inout a;
    output b;
  endclocking

  initial begin
    cb.a <= c; // The value of 'a' will change in the Re-NBA region
    cb.b <= cb.a; // 'b' is assigned the value of 'a' before the change
  end

endmodule
