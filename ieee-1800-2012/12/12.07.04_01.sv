// IEEE Std 1800-2012
//   12. Procedural programming statements
//    12.7 Loop statements
//     12.7.4 The while-loop

// ! TYPE: POSITIVE

module top;

  int count;
  logic [7:0] data;

  initial begin
    begin : count1s
      logic [7:0] tempreg;
      count = 0;
      tempreg = data;
      while (tempreg) begin
        if (tempreg[0])
          count++;
        tempreg >>= 1;
      end
    end
  end

endmodule
