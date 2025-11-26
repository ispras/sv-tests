// IEEE Std 1364-2005
//   14. Specify blocks
//     14.2 Module path declarations
//       14.2.4 State-dependent paths
//         14.2.4.2 Simple state-dependent paths
//           The following example models a partial ALU. The state-dependent paths specify different
//           delays for different ALU operations. In the example, the first three path declarations
//           declare paths extending from operand inputs i1 and i2 to the o1 output. The delays on
//           these paths are assigned to operations on the basis of the operation specified by the
//           inputs on opcode. The last path declaration declares a path from the opcode input to
//           the o1 output.

// ! TYPE: POSITIVE

module ALU (o1, i1, i2, opcode);

  input [7:0] i1, i2;
  input [2:1] opcode;
  output [7:0] o1;

  //functional description omitted
  specify
    // add operation
    if (opcode == 2'b00) (i1,i2 *> o1) = (25.0, 25.0);
    // pass-through i1 operation
    if (opcode == 2'b01) (i1 => o1) = (5.6, 8.0);
    // pass-through i2 operation
    if (opcode == 2'b10) (i2 => o1) = (5.6, 8.0);
    // delays on opcode changes
    (opcode *> o1) = (6.1, 6.5);
  endspecify
endmodule
