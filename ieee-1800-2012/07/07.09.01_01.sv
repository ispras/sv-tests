// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.9 Associative array methods
//    7.9.1 Num() and size()

// ! TYPE: POSITIVE

module top;

  int imem[int];

  initial begin
    imem[2'b11] = 1;
    imem[16'hffff] = 2;
    imem[4'b1000] = 3;
    $display("%0d entries\n", imem.num); // prints "3 entries"
  end

endmodule
