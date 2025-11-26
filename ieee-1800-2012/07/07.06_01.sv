// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.6 Array assignments

// ! TYPE: VARYING

module top;

  int A[10:1]; // fixed-size array of 10 elements
  int B[0:9]; // fixed-size array of 10 elements
  int C[24:1]; // fixed-size array of 24 elements

  initial begin
    A = B; // ok. Compatible type and same size

`ifdef NEGATIVE_TEST
    A = C; // type check error: different sizes
`endif
  end

endmodule
