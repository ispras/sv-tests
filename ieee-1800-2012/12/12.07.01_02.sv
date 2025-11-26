// IEEE Std 1800-2012
//   12. Procedural programming statements
//    12.7 Loop statements
//     12.7.1 The for-loop

// ! TYPE: POSITIVE

module top;

  logic [31:0] lookup_table [0:255];
  logic [31:0] small_table [0:15];

  initial begin
    begin
      automatic int i;
      for (int i = 0; i <= 255; i++)
        lookup_table[i] = i ^ (i << 1);
    end
  end

  initial begin
    begin: loop2
      automatic int i;
      for (int i = 15; i >= 0; i--)
        small_table[i] = i & 4'b1010;
    end
  end

endmodule
