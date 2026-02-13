// IEEE Std 1800-2012
//   6. Data types
//    6.20 Constants
//     6.20.2 Value parameters
//      6.20.2.1 $ as a parameter value

// ! TYPE: POSITIVE

interface width_checker #(parameter min_cks = 1, parameter max_cks = 1)
                         (input logic clk, reset_n, expr);
  generate
    if ($isunbounded(max_cks)) begin
      property width;
        @(posedge clk)
          (reset_n && $rose(expr)) |-> (expr [*min_cks]);
      endproperty
      a2: assert property (width);
    end
    else begin
      property assert_width_p;
        @(posedge clk)
          (reset_n && $rose(expr)) |-> (expr[*min_cks:max_cks])
        ##1 (!expr);
      endproperty
      a2: assert property (assert_width_p);
    end
  endgenerate
endinterface

module top(clk, enables);
  input logic clk, enables;

  width_checker #(3, $) max_width_unspecified (clk, 1, enables);
  width_checker #(2, 4) width_specified (clk, 1, enables);
endmodule
