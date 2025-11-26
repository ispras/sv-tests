// IEEE Std 1364-2005
//   5. Expressions
//    5.2 Operands
//      5.2.1 Vector bit-select and part-select addressing
//        Example 1 - The following example specifies the single bit of acc vector
//        that is addressed by the operand index:

// ! TYPE: POSITIVE

module test;

  parameter index = 13;

  // The actual bit that is accessed by an address is, in part, determined by the declaration of
  // acc. For instance, each of the declarations of acc shown in the next example causes a
  // particular value of index to access a different bit:
  reg [15:0] acc1;
  reg [2:17] acc2;

  initial begin
    acc1[index] = acc2[index];
  end

endmodule
