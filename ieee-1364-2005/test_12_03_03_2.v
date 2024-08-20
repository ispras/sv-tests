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
//     12.3 Ports
//       12.3.3 Port declarations
//         Implicit nets shall be considered unsigned. Nets connected to ports without an explicit
//         net declaration shall be considered unsigned, unless the port is declared as signed.

module test(a, b, c, d, e, f, g, h);

  input [7:0] a;         // no explicit declaration - net is unsigned
  input [7:0] b;
  input signed [7:0] c;
  input signed [7:0] d;  // no explicit net declaration - net is signed
  output [7:0] e;        // no explicit declaration - net is unsigned
  output [7:0] f;
  output signed [7:0] g;
  output signed [7:0] h; // no explicit net declaration - net is signed
  wire signed [7:0] b;   // port b inherits signed attribute from net decl.
  wire [7:0] c;          // net  c inherits signed attribute from port
  reg signed [7:0] f;    // port f inherits signed attribute from reg decl.
  reg [7:0] g;           // reg  g inherits signed attribute from port
endmodule

module complex_ports({c,d}, .e(f)); // Nets {c,d} receive the first port bits.
  input signed [7:0] c;             // Name 'f' is declared inside the module.
  input signed [7:0] d;             // Name 'e' is defined outside the module.
  output [7:0] f;                   // Can't use named port connections of first port.
endmodule

module split_ports(a[7:4], a[3:0]); // First port is upper 4 bits of 'a'.
  input [7:0] a;                    // Second port is lower 4 bits of 'a'.
endmodule                           // Can't use named port connections because
                                    // of part-select port 'a'.

module same_port(.a(i), .b(i)); // Name 'i' is declared inside the module as an inout port.
  inout i;                      // Names 'a' and 'b' are defined for port connections.
endmodule

module renamed_concat(.a({b, c}), f, .g(h[1]));
  input [7:0] a;        // Names 'b', 'c', 'f', 'h' are defined inside the module.
  input [7:0] b;        // Names 'a', 'f', 'g' are defined for port connections.
  input signed [7:0] c; // Can use named port connections.
  output [7:0] f;
  output signed [7:0] g;
  output signed [7:0] h;
endmodule

module same_input(a, a); // This is legal. The inputs are tied together.
input a;
endmodule

module mixed_direction(.p({a, e})); // 'p' contains both input and output directions.
  input a;
  output e;
endmodule
