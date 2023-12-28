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
//       If an identifier is used in a port expression declaration, then an implicit net of default net type shall
//       be assumed, with the vector width of the port expression declaration. See 12.3.3 for a discussion of
//       port expression declarations.

module test(a,b,c,d,e,f,g,h);
  // From 12.3.3
  input [7:0] a; // no explicit declaration - net is unsigned
  input [7:0] b;
  input signed [7:0] c;
  input signed [7:0] d; // no explicit net declaration - net is signed
  output [7:0] e; // no explicit declaration - net is unsigned
  output [7:0] f;
  output signed [7:0] g;
  output signed [7:0] h; // no explicit net declaration - net is signed

  wire signed [7:0] b; // port b inherits signed attribute from net decl.
  wire [7:0] c; // net c inherits signed attribute from port
  reg signed [7:0] f; // port f inherits signed attribute from reg decl.
  reg [7:0] g; // reg g inherits signed attribute from port

  assign e = a + b;
  assign h = c - d;

  always @(*) begin
    f = {c[7:6], d[5:4], b[3:2], a[1:0]};
    g = h >>> e[3:0]; 
  end
endmodule
