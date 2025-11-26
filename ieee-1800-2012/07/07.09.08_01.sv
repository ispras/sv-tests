// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.9 Associative array methods
//    7.9.8 Arguments to traversal methods

// ! TYPE: NEGATIVE

module top;

  string aa[int];
  byte ix;
  int status;

  initial begin
    aa[ 1000 ] = "a";
    status = aa.first( ix );
    // 'status' is –1
    // 'ix' is 232 (least significant 8 bits of 1000)
  end

endmodule
