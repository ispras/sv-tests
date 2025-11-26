// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.4 Conditional statement
//       If that association is not desired, a begin-end block statement shall be used to force
//       the proper association, as shown below.

// ! TYPE: POSITIVE

module test;

  reg index, rega, regb, result;

  initial begin
    if (index > 0) begin
      if (rega > regb)
        result = rega;
    end
    else result = regb;
  end
endmodule
