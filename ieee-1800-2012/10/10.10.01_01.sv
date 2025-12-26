// IEEE Std 1800-2012
//   10. Assignment statements
//    10.10 Unpacked array concatenation
//     10.10.1 Unpacked array concatenations compared with
//             array assignment patterns

// ! TYPE: POSITIVE

module top;

  int A3[1:3];

  initial begin
    A3 = {1, 2, 3}; // unpacked array concatenation: A3[1]=1, A3[2]=2, A3[3]=3
    A3 = '{1, 2, 3}; // array assignment pattern: A3[1]=1, A3[2]=2, A3[3]=3
  end

endmodule
