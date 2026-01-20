// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.2 Module definitions
//     23.2.2 Port declarations

// ! TYPE: POSITIVE

typedef struct packed {
  bit isfloat;
  union packed {int i; logic [31:0] f_bits;} n;
} tagged_st; // named structure

module top (input var int in1,
            input var logic [31:0] in2,
            output tagged_st out);
endmodule
