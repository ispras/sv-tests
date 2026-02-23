// IEEE Std 1800-2012
//   12. Procedural programming statements
//    12.7 Loop statements
//     12.7.5 The do...while-loop

// ! TYPE: POSITIVE

module top;

  string s;
  int map[string];

  initial begin
    if (map.first(s))
      do
        $display("%s : %d\n", s, map[s]);
      while (map.next(s));
  end

endmodule
