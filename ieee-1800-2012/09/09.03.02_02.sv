// IEEE Std 1800-2012
//   9. Processes
//    9.3 Block statements
//     9.3.2 Parallel blocks

// ! TYPE: POSITIVE

module top(input clock);

  initial begin
    fork
      begin
        $display("First Block\n");
        # 20ns;
      end
      begin
        $display("Second Block\n");
        @(posedge clock);
      end
    join
  end

endmodule
