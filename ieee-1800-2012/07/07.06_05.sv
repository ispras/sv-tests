// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.6 Array assignments

// ! TYPE: POSITIVE

module top;

  string d[1:5] = '{ "a", "b", "c", "d", "e" };
  string p[];
  initial begin
    p = { d[1:3], "hello", d[4:5] };
  end

endmodule
