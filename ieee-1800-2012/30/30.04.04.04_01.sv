// IEEE Std 1800-2012
//   30. Specify blocks
//    30.4 Module path declarations
//     30.4.4 State-dependent paths
//      30.4.4.4 The ifnone condition

// ! TYPE: POSITIVE

module top(input IN, CLK, C1, D, input [7:0] i1, i2,
           input [2:1] opcode, output OUT, Q, output [7:0] o1);
  specify
    if (C1) (IN => OUT) = (1, 1);
    ifnone (IN => OUT) = (2, 2);
    // 'add' operation
    if (opcode == 2'b00) (i1, i2 *> o1) = (25.0, 25.0);
    // pass-through 'i1' operation
    if (opcode == 2'b01) (i1 => o1) = (5.6, 8.0);
    // pass-through 'i2' operation
    if (opcode == 2'b10) (i2 => o1) = (5.6, 8.0);
    // all other operations
    ifnone (i2 => o1) = (15.0, 15.0);

    if (C1) (posedge CLK => (Q +: D)) = (1, 1);
    ifnone (CLK => Q) = (2, 2);
  endspecify
endmodule
