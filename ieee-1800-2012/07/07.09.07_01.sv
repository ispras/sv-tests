// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.9 Associative array methods
//    7.9.7 Prev()

// ! TYPE: POSITIVE

module top;

  int map[string];
  string s = "hello";

  initial begin
    map["hello"] = 1;
    if (map.last(s))
      do
        $display("%s : %d\n", s, map[s]);
      while (map.prev(s));
  end

endmodule
