// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.9 Associative array methods
//    7.9.4 First()

// ! TYPE: POSITIVE

module top;

  int map[string];
  string s = "hello";

  initial begin
    map["hello"] = 1;
    if (map.first(s))
      $display("First entry is : map[%s] = %0d\n", s, map[s]);
  end

endmodule
