// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.6 Looping statements
//       The for statement accomplishes the same results as the following pseudo-code
//       that is based on the while loop.

// ! TYPE: POSITIVE

module test(rega);

  input [7:0] rega;
  reg count;
  reg [7:0] tempreg;

  initial begin
    count = 0;
    tempreg = rega;
    while (count < 8) begin
      tempreg = tempreg >> 1;
      count = count +1;
    end

    // is equivalent to
    for (count = 0; count < 8; count = count + 1)
      tempreg = tempreg >> 1;
  end
endmodule
