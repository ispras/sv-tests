// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.5 Dynamic arrays
//    7.5.2 Size()

// ! TYPE: POSITIVE

module top;

  integer addr[];
  int j = addr.size;

  initial begin
    addr = new[100];
    addr = new[200](addr);

    addr = new[addr.size() * 4] (addr); // quadruple 'addr' array
  end

endmodule
