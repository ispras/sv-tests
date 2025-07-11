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
//     12.2 Overriding module parameter values
//       12.2.2 Module instance parameter value assignment
//         12.2.2.2 Parameter value assignment by name
//           It shall be legal to instantiate modules using different types of parameter
//           redefinition in the same top-level module. Consider the following example, where the
//           parameters of mod_a are changed using parameter redefinition by ordered list and the
//           second parameter of mod_c is changed using parameter redefinition by
//           name during instantiation

// ! TYPE: VARYING

module tb3;

  // declarations & code
  wire [9:0] out_a, out_d;
  wire [4:0] out_b, out_c;
  reg  [9:0] in_a, in_d;
  reg  [4:0] in_b, in_c;
  reg        clk;

  // legal mixture of instance with positional parameters and
  // another instance with named parameters
  vdff #(10, 15)     mod_a(.out(out_a), .in(in_a), .clk(clk));
  vdff               mod_b(.out(out_b), .in(in_b), .clk(clk));
  vdff #(.delay(12)) mod_c(.out(out_c), .in(in_c), .clk(clk));

  // mod_a instance with ILLEGAL mixture of parameter assignments
`ifdef NEGATIVE_TEST
  vdff #(10, .delay(15)) mod_a(.out(out_a), .in(in_a), .clk(clk));
`endif

endmodule

module vdff(out, in, clk);

  parameter size=5, delay=1;
  output [size-1:0] out;
  input  [size-1:0] in;
  input             clk;
  reg    [size-1:0] out;

  always @(posedge clk)
    #delay out = in;
endmodule
