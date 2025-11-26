// IEEE Std 1800-2012
//   12. Procedural programming statements
//    12.7 Loop statements
//     12.7.2 The repeat loop

// ! TYPE: POSITIVE

module top;

  parameter size = 8, longsize = 16;
  logic [size:1] opa, opb;
  logic [longsize:1] result;

  initial begin
    begin : mult
      logic [longsize:1] shift_opa, shift_opb;
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
  end

endmodule
