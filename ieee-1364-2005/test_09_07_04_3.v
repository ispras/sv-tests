// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.7 Procedural timing controls
//       9.7.4 Event or operator
//         The following example show the use of the comma (,) as an event logical or operator.

// ! TYPE: POSITIVE

module test(clk, rstn);

  input clk, rstn;
  reg r, regb;

  always @(posedge clk, negedge rstn) begin
    r = regb;
  end
endmodule
