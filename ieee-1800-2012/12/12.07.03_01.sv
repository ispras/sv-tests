// IEEE Std 1800-2012
//   12. Procedural programming statements
//    12.7 Loop statements
//     12.7.3 The foreach-loop

// ! TYPE: POSITIVE

module top;

  string words [2] = '{"hello", "world"};
  int prod [1:8] [1:3];

  initial begin
    foreach(words [j])
      $display(j , words[j]); // print each index and value

    foreach(prod[k, m])
      prod[k][m] = k * m; // initialize
  end

endmodule
