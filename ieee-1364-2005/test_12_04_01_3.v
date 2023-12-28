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
//       12.4.1 Loop generate constructs
//         Generated ripple adder with two-dimensional net declaration outside of the generate loop.

module addergen1 (co, sum, a, b, ci);
  parameter SIZE = 4;
  output [SIZE-1:0] sum;
  output            co;
  input  [SIZE-1:0] a, b;
  input             ci;
  wire   [SIZE :0]  c;
  wire   [SIZE-1:0] t [1:3];
  genvar            i;

  assign c[0] = ci;

// Hierarchical gate instance names are:
// xor gates: bit[0].g1 bit[1].g1 bit[2].g1 bit[3].g1
//            bit[0].g2 bit[1].g2 bit[2].g2 bit[3].g2
// and gates: bit[0].g3 bit[1].g3 bit[2].g3 bit[3].g3
//            bit[0].g4 bit[1].g4 bit[2].g4 bit[3].g4
// or gates:  bit[0].g5 bit[1].g5 bit[2].g5 bit[3].g5
// Generated instances are connected with
// multidimensional nets t[1][3:0] t[2][3:0] t[3][3:0]
// (12 nets total)

  for (i=0; i<SIZE; i=i+1) begin :bit_
    xor g1 ( t[1][i],    a[i], b[i]);
    xor g2 (  sum[i], t[1][i], c[i]);
    and g3 ( t[2][i],    a[i], b[i]);
    and g4 ( t[3][i], t[1][i], c[i]);
    or g5 (   c[i+1], t[2][i], t[3][i]);
  end

  assign co = c[SIZE];
endmodule
