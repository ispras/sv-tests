// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.7 Signed expressions

// ! TYPE: POSITIVE

module top;

  logic [7:0] regA, regB;
  logic signed [7:0] regS;

  initial begin
    regA = $unsigned(-4); // regA = 8'b11111100
    regB = $unsigned(-4'sd4); // regB = 8'b00001100
    regS = $signed (4'b1100); // regS = -4

    regA = unsigned'(-4); // regA = 8'b11111100
    regS = signed'(4'b1100); // regS = -4

    regS = regA + regB; // will do 'unsigned' addition
    regS = byte'(regA) + byte'(regB); // will do 'signed' addition
    regS = signed'(regA) + signed'(regB); // will do 'signed' addition
    regS = $signed(regA) + $signed(regB); // will do 'signed' addition
  end

endmodule
