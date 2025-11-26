// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.7 Procedural timing controls
//       9.7.7 Intra-assignment timing controls
//         Table 9-2 illustrates the philosophy of intra-assignment timing controls by showing the
//         code that could accomplish the same timing effect without using intra-assignment.

// ! TYPE: POSITIVE

module test(clk);

  input clk;
  reg a, b, temp;

  initial begin
    a =  repeat(3)
      @(posedge clk) b; // with intra-assignment construct
  end

  initial begin
    temp = b; // without intra-assignment construct
    @(posedge clk);
    @(posedge clk);
    @(posedge clk) a = temp;
  end
endmodule
