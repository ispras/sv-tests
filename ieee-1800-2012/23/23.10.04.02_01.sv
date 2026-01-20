// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.10 Overriding module parameters
//     23.10.4 Elaboration considerations
//      23.10.4.2 Early resolution of hierarchical names

// ! TYPE: POSITIVE

module top;
  m1 n();
endmodule

module m1;
  parameter p = 2;
  defparam m.n.p = 1;
  initial $display(m.n.p);

  generate
    if (1) begin : m
      m2 n();
    end
  endgenerate
endmodule

module m2;
  parameter p = 3;
endmodule
