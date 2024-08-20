/*
 * Copyright 2018 ISP RAS (http://www.ispras.ru)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// IEEE Std 1364-2005
//   12. Hierarchical structures
//     12.4 Generate constructs
//       12.4.2 Conditional generate constructs
//         An implementation of a parameterized multiplier module.

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
