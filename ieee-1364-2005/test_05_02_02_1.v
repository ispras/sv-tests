// IEEE Std 1364-2005
//   5. Expressions
//    5.2 Operands
//      5.2.2 Array and memory addressing
//        The next example declares a memory of 1024 eight-bit words.

// ! TYPE: POSITIVE

module test;

  reg [7:0] mem_name[0:1023];
  integer addr_expr;
  reg [7:0] expr_result;
  reg [7:0] indirect_result;

  initial begin
    expr_result = mem_name[addr_expr];
    indirect_result = mem_name[mem_name[3]];
  end

endmodule
