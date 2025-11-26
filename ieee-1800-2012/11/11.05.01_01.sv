// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.5 Operands
//     11.5.1 Vector bit-select and part-select addressing

// ! TYPE: POSITIVE

module top;

  logic [31:0] a_vect;
  logic [0:31] b_vect;
  logic [63:0] dword;
  integer sel = 1;

  logic [7:0] l1 = a_vect[0 +: 8]; // == 'a_vect[7 : 0]'
  logic [7:0] l2 = a_vect[15 -: 8]; // == 'a_vect[15 : 8]'
  logic [7:0] l3 = b_vect[0 +: 8]; // == 'b_vect[0 : 7]'
  logic [7:0] l4 = b_vect[15 -: 8]; // == 'b_vect[8 :15]'
  logic [8:0] l5 = dword[8 * sel +: 8]; // variable part-select with fixed width

endmodule
