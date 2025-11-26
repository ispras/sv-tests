// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.1 Behavioral model overview
//       The following example shows a complete Verilog behavioral model.

// ! TYPE: POSITIVE

module behave;

  reg [1:0] a, b;

  initial begin
    a = 'b1;
    b = 'b0;
  end

  always begin
    #50 a = ~a;
  end

  always begin
    #100 b = ~b;
  end
endmodule
