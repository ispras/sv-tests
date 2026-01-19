// IEEE Std 1800-2012
//   27. Generate constructs
//    27.5 Conditional generate constructs

// ! TYPE: POSITIVE

module CLA_multiplier #(a_width = 2, b_width = 2)(a, b, product);
  localparam product_width = a_width + b_width;
  input [a_width - 1:0] a;
  input [b_width - 1:0] b;
  output [product_width - 1:0] product;
endmodule

module WALLACE_multiplier #(a_width = 2, b_width = 2)(a, b, product);
  localparam product_width = a_width + b_width;
  input [a_width - 1:0] a;
  input [b_width - 1:0] b;
  output [product_width - 1:0] product;
endmodule

module top(a, b, product);
  parameter a_width = 8, b_width = 8;

  // cannot be modified directly with the defparam
  // statement or the module instance statement #
  localparam product_width = a_width + b_width;

  input [a_width - 1:0] a;
  input [b_width - 1:0] b;
  output [product_width - 1:0] product;

  generate
    if((a_width < 8) || (b_width < 8)) begin: mult
      CLA_multiplier #(a_width, b_width) u1(a, b, product);
      // instantiate a 'CLA' multiplier
    end
    else begin: mult
      WALLACE_multiplier #(a_width, b_width) u1(a, b, product);
      // instantiate a Wallace-tree multiplier
    end
  endgenerate
  // The hierarchical instance name is 'mult.u1'
endmodule
