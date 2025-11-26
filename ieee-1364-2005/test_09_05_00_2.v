// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.5 Case statement
//       The following example illustrates the use of a case statement to handle x
//       and z values properly. In this example, if select[1] is 0 and flaga is 0, then even if
//       the value of select[2] is x or z, result should be 0—which is resolved by the third case.

// ! TYPE: POSITIVE

module test(select);

  input [1:3] select;
  reg flaga, flagb;
  reg result;

  initial begin
    case (select[1:2])
      2'b00: result = 0;
      2'b01: result = flaga;
      2'b0x,
      2'b0z: result = flaga ? 'bx : 0;
      2'b10: result = flagb;
      2'bx0,
      2'bz0: result = flagb ? 'bx : 0;
      default result = 'bx;
    endcase
  end
endmodule
