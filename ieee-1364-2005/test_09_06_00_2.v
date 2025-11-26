// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.6 Looping statements
//       The following example counts the number of logic 1 values in rega.

// ! TYPE: POSITIVE

module test;

  reg count, rega;

  initial
    begin : count1s
      reg [7:0] tempreg;
      count = 0;
      tempreg = rega;
      while (tempreg) begin
        if (tempreg[0])
          count = count + 1;
        tempreg = tempreg >> 1;
      end
    end
endmodule
