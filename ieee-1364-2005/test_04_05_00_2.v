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
//   4. Data types
//     4.5 Implicit declarations
//       If an identifier is used in the terminal list of a primitive instance or a module instance, and that
//       identifier has not been declared previously in the scope where the instantiation appears or in any
//       scope whose declarations can be directly referenced from the scope where the instantiation appears
//       (see 12.7), then an implicit scalar net of default net type shall be assumed.

module test(a, b, x, res);

  input wire a;
  input wire b;
  input wire [2:0] x;
  wire [2:0] z;
  output wire [3:0] res;

  input_y yin(
    .x (x),
    .y (y), // y is implicitly declared using the default net type (1-bit wire)
    .z (z)
  );
  
  output_y yout(
    .a (a),
    .b (b),
    .y (y) // y is implicitly declared using the default net type (1-bit wire)
  );
  
  assign res = {y, z};  
endmodule

module input_y(x, y, z);
  input wire [2:0] x;
  input wire y;
  output reg [2:0] z;
  
  always @(*) begin
    if (y) z = x;
  end
endmodule

module output_y(a, b, y);
  input wire a;
  input wire b;
  output wire y;
  
  assign y = a & b;
endmodule
