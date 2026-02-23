// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.9 Associative array methods
//    7.9.3 Exists()

// ! TYPE: POSITIVE

module top;

  int map[string];

  initial begin
    if (map.exists("hello"))
      map["hello"] += 1;
    else
      map["hello"] = 0;
  end

endmodule
