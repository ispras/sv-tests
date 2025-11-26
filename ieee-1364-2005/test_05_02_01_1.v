// IEEE Std 1364-2005
//   5. Expressions
//    5.2 Operands
//      5.2.1 Vector bit-select and part-select addressing

// ! TYPE: VARYING

`define lsb_base_expr (4 - 1)
`define msb_base_expr (2 * 3)
`define width_expr    (1 + 1)

module test;

  reg [15:0] big_vect;
  reg [0:15] little_vect;

  initial begin
       big_vect[`lsb_base_expr +: `width_expr] = 8'b1010_1010;
    little_vect[`msb_base_expr +: `width_expr] = 8'b1010_1010;
       big_vect[`msb_base_expr -: `width_expr] = 8'b1010_1010;
    little_vect[`lsb_base_expr -: `width_expr] = 8'b1010_1010;
  end
endmodule
