// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.8 Associative arrays
//    7.8.7 Allocating associative array elements

// ! TYPE: POSITIVE

module top;

  int a[int] = '{default:1};
  typedef struct { int x = 1, y = 2; } xy_t;
  xy_t b[int];

  initial begin
    a[1]++;
    b[2].x = 5;
  end

endmodule
