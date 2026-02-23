// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.9 Associative array methods
//    7.9.2 Delete()

// ! TYPE: POSITIVE

module top;

  int map[string];

  initial begin
    map["hello"] = 1;
    map["sad"] = 2;
    map["world"] = 3;
    map.delete("sad"); // remove entry whose index is "sad" from 'map'
    map.delete; // remove all entries from the associative array 'map'
  end

endmodule
