// IEEE Std 1800-2012
//   14. Clocking blocks
//    14.12 Default clocking

// ! TYPE: POSITIVE

module top(input clk);

  program test(input logic clk, input logic [15:0] data);

    default clocking bus @(posedge clk);
      inout data;
    endclocking

    initial begin
      ## 5;
      if (bus.data == 10)
        ## 1;
      else begin
      end
    end

  endprogram

endmodule
