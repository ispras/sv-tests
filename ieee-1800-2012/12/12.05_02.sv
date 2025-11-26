// IEEE Std 1800-2012
//   12. Procedural programming statements
//    12.5 Case statement

// ! TYPE: POSITIVE

module top;

  logic [0:2] select;
  logic [9:0] result, flaga, flagb;

  initial begin
    case (select[1:2])
      2'b00: result = 0;
      2'b01: result = flaga;
      2'b0x,
      2'b0z: result = flaga ? 'x : 0;
      2'b10: result = flagb;
      2'bx0,
      2'bz0: result = flagb ? 'x : 0;
      default result = 'x;
    endcase
  end

endmodule
