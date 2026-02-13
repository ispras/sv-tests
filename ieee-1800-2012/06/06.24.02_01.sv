// IEEE Std 1800-2012
//   6. Data types
//    6.24 Casting
//     6.24.2 $cast dynamic casting

// ! TYPE: POSITIVE

module top;
  typedef enum {red, green, blue, yellow, white, black} Colors;
  Colors col;
  initial begin
    $cast(col, 2 + 3);

    if (!$cast(col, 2 + 8)) // 10: invalid 'cast'
      $display("Error in cast");
  end
endmodule
