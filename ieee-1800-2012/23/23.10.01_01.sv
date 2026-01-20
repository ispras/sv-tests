// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.10 Overriding module parameters
//     23.10.1 defparam statement

// ! TYPE: NEGATIVE

module flop(input in, in1, output out1);
  parameter xyz = 0;
endmodule

module top(input [7:0] in, in1, output [7:0] out1);
  genvar i;
  generate
    for (i = 0; i < 8; i = i + 1) begin: somename
      flop my_flop(in[i], in1[i], out1[i]);
      defparam somename[i + 1].my_flop.xyz = i;
    end
  endgenerate
endmodule
