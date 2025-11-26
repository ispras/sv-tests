// IEEE Std 1364-2005
//   5. Expressions
//    5.2 Operands
//      5.2.1 Vector bit-select and part-select addressing

// ! TYPE: POSITIVE

module test;

  reg [31: 0] big_vect;
  reg [0 :31] little_vect;
  reg [63: 0] dword;
  integer sel;

  initial begin
    big_vect[ 0 +: 8]    = 8'b1010_1010; // == big_vect[ 7 : 0]
    big_vect[15 -: 8]    = 8'b1010_1010; // == big_vect[15 : 8]
    little_vect[ 0 +: 8] = 8'b1010_1010; // == little_vect[0 : 7]
    little_vect[15 -: 8] = 8'b1010_1010; // == little_vect[8 :15]
    dword[8*sel +: 8]    = 8'b1010_1010; // variable part-select with fixed width
  end
endmodule
