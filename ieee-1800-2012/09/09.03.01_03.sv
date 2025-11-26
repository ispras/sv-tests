// IEEE Std 1800-2012
//   9. Processes
//    9.3 Block statements
//     9.3.1 Sequential blocks

// ! TYPE: POSITIVE

module top;

  parameter d = 50; // 'd' declared as a parameter and
  logic [7:0] r; // 'r' declared as an 8-bit variable

  initial begin
    begin // a waveform controlled by sequential delays
      #d r = 'h35;
      #d r = 'hE2;
      #d r = 'h00;
      #d r = 'hF7;
    end
  end

endmodule
