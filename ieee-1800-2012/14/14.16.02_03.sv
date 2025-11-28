// IEEE Std 1800-2012
//   14. Clocking blocks
//    14.16 Synchronous drives
//     14.16.2 Driving clocking output signals

// ! TYPE: POSITIVE

module top(input clk, expr1, expr2, expr3, expr4);

  bit v;
  default clocking cb @(posedge clk);
    output v;
  endclocking

  initial begin
    ##1; // Wait until cycle '1'
    cb.v <= expr1; // Matures in cycle '1', 'v' is assigned 'expr1'
    cb.v <= ##2 expr2; // Matures in cycle '3'
    #1 cb.v <= ##2 expr3; // Matures in cycle '3'
    ##1 cb.v <= ##1 expr4; // Matures in cycle '3', 'v' is assigned 'expr4'
  end

endmodule
