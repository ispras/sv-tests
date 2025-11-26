// IEEE Std 1800-2012
//   9. Processes
//    9.3 Block statements
//     9.3.2 Parallel blocks

// ! TYPE: POSITIVE

module top;

  logic [7:0] r;

  initial begin
    fork
      #50 r = 'h35;
      #100 r = 'hE2;
      #150 r = 'h00;
      #200 r = 'hF7;
    join
  end

endmodule
