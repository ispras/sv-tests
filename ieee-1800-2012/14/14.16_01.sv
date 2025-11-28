// IEEE Std 1800-2012
//   14. Clocking blocks
//    14.16 Synchronous drives

// ! TYPE: VARYING

module top(input clk);

  logic [7:0] data;
  logic [7:0] r = 8'hAA;

  default clocking bus @(posedge clk);
    inout data;
  endclocking

  initial begin
    bus.data[3:0] <= 4'h5; // drive 'data' in Re-NBA region of the current cycle
    ##1 bus.data <= 8'hz; // wait '1' default clocking cycle, then drive 'data'
    ##2; bus.data <= 2; // wait '2' default clocking cycles, then drive 'data'
    bus.data <= ##2 r; // remember the value of 'r' and then drive 'data' '2' ('bus') cycles later
`ifdef NEGATIVE_TEST
    bus.data <= #4 r; // error: regular intra-assignment delay not allowed in synchronous drives
`endif
  end

endmodule
