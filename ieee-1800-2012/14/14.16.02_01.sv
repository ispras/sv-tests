// IEEE Std 1800-2012
//   14. Clocking blocks
//    14.16 Synchronous drives
//     14.16.2 Driving clocking output signals

// ! TYPE: POSITIVE

module top(input clk);

  logic nibble;

  default clocking pe @(posedge clk);
    output nibble; // four bit output
  endclocking

  initial begin
    ##2;
    pe.nibble <= 4'b0101;
    pe.nibble <= 4'b0011;
  end

endmodule
