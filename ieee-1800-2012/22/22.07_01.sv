// IEEE Std 1800-2012
//   22. Compiler directives
//    22.7 `timescale

// ! TYPE: POSITIVE

`timescale 10 ns / 1 ns
module top;

  logic set;
  parameter d = 1.55;

  initial begin
    #d set = 0;
    #d set = 1;
  end

endmodule
