// IEEE Std 1800-2012
//   10. Assignment statements
//    10.9 Assignment patterns
//     10.9.2 Structure assignment patterns

// ! TYPE: POSITIVE

module top;
  typedef struct {
  int x;
  int y;
  } st;

  st s1;
  int k = 1;

  initial begin
    #1 s1 = '{1, 2+k}; // by position
    #1 $display( s1.x, s1.y);
    #1 s1 = '{x:2, y:3+k}; // by name
    #1 $display( s1.x, s1.y);
    #1 $finish;
  end
endmodule
