// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.6 Looping statements
//       Repeat statement: In the following example of a repeat loop, add and shift operators
//       implement a multiplier.

// ! TYPE: POSITIVE

module test;

  parameter size = 8, longsize = 16;
  reg [size:1] opa, opb;
  reg [longsize:1] result;

  initial
    begin : mult
      reg [longsize:1] shift_opa, shift_opb;
      shift_opa = opa;
      shift_opb = opb;
      result = 0;
      repeat (size) begin
        if (shift_opb[1])
          result = result + shift_opa;
        shift_opa = shift_opa << 1;
        shift_opb = shift_opb >> 1;
      end
    end

endmodule
