// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.6 Array assignments

// ! TYPE: VARYING

module top;

  int A[100:1]; // fixed-size array of 100 elements
  int B[]; // empty dynamic array
  int C[] = new[8]; // dynamic array of size 8

  initial begin
    B = A; // ok. B has 100 elements
    B = C; // ok. B has 8 elements

    // The last statement above is equivalent to:
    B = new[C.size] (C);
  end

endmodule
