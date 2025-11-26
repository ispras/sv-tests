// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.3 Unions

// ! TYPE: POSITIVE

module top;

  typedef union { int i; shortreal f; } num; // named 'union' type
  num n;
  initial begin
    n.f = 0.0; // set 'n' in floating point format
  end

  typedef struct {
    bit isfloat;
    union { int i; shortreal f; } n; // anonymous 'union' type
  } tagged_st; // named structure

endmodule
