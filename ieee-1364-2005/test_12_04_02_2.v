// IEEE Std 1364-2005
//   12. Hierarchical structures
//     12.4 Generate constructs
//       12.4.2 Conditional generate constructs
//         An implementation of a parameterized multiplier module.

// ! TYPE: POSITIVE

module CLA_multiplier(a, b, product);

  parameter a_width = 8, b_width = 8;
  localparam product_width = a_width+b_width;
  input [a_width-1:0] a;
  input [b_width-1:0] b;
  output [product_width-1:0] product;
endmodule

module WALLACE_multiplier(a, b, product);

  parameter a_width = 8, b_width = 8;
  localparam product_width = a_width+b_width;
  input [a_width-1:0] a;
  input [b_width-1:0] b;
  output [product_width-1:0] product;
endmodule


module multiplier(a,b,product);

  parameter a_width = 8, b_width = 8;
  localparam product_width = a_width + b_width;

  // cannot be modified directly with the defparam
  // statement or the module instance statement #
  input [a_width-1:0] a;
  input [b_width-1:0] b;
  output [product_width-1:0] product;

  generate
    if ((a_width < 8) || (b_width < 8)) begin : mult
  
      // instantiate a CLA multiplier
      CLA_multiplier #(a_width,b_width) u1(a, b, product);
    end
    else begin : mult

      // instantiate a Wallace-tree multiplier
      WALLACE_multiplier #(a_width,b_width) u1(a, b, product);
    end
  endgenerate
  // The hierarchical instance name is mult.u1
endmodule
