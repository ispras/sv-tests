// IEEE Std 1800-2012
//   14. Clocking blocks
//    14.5 Hierarchical expressions

// ! TYPE: POSITIVE

module top(input clock, input [5:0] instruction);

  reg opcode, regA;
  reg [3:0] regB;

  clocking mem @(clock);
    input instruction = { opcode, regA, regB[3:1] };
  endclocking

endmodule
