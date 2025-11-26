// IEEE Std 1800-2012
//   9. Processes
//    9.6 Process control
//     9.6.2 Disable statement

// ! TYPE: POSITIVE

module top(input a, b, clk);

  parameter n = 10;

  initial begin : outer_block
    for (int i = 0; i < n; i = i + 1) begin : inner_block
      @clk
        if (a == 0) // "continue" loop
          disable inner_block ;
      @clk
        if (a == b) // "break" from loop
          disable outer_block;
    end
  end

endmodule
