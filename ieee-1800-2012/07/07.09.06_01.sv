// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.9 Associative array methods
//    7.9.6 Next()

// ! TYPE: POSITIVE

module top;

  int map[string];
  string s = "hello";

  initial begin
    map["hello"] = 1;
    if (map.first(s))
      do
        $display("%s : %d\n", s, map[s]);
      while (map.next(s));
  end

endmodule
