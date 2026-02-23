// IEEE Std 1800-2012
//   10. Assignment statements
//    10.9 Assignment patterns
//     10.9.2 Structure assignment patterns

// ! TYPE: POSITIVE

module top;

  struct {
    int A;
    struct {
      int B, C;
    } BC1, BC2;
  } ABC, DEF;

  initial begin
    ABC = '{A:1, BC1:'{B:2, C:3}, BC2:'{B:4, C:5}};
    DEF = '{default:10};
  end

endmodule
