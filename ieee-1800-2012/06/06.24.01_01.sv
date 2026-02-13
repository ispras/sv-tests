// IEEE Std 1800-2012
//   6. Data types
//    6.24 Casting
//     6.24.1 Cast operator

// ! TYPE: VARYING

module top;
  logic [7:0] regA;
  logic signed [7:0] regS;
  initial begin
    regA = unsigned'(-4); // regA = 8'b11111100
    regS = signed'(4'b1100); // regS = -4
  end

  typedef struct {
    bit isfloat;
`ifdef NEGATIVE_TEST
    union {int i; shortreal f;} n; // anonymous type
`endif
  } tagged_st; // named structure

  typedef bit [$bits(tagged_st) - 1:0] tagbits; // 'tagged_st' defined above

  tagged_st a [7:0];// unpacked array of structures

  tagbits t = tagbits'(a[3]); // convert structure to array of bits
  initial a[4] = tagged_st'(t); // convert array of bits back to structure
endmodule
