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
//   3. Lexical conventions
//    3.5 Numbers
//      3.5.1 Integer constants
//        Example 4 - Automatic left padding

module test;

  reg [11:0] a, b, c, d;

  initial begin
    a = 'h x;   // yields xxx
    b = 'h 3x;  // yields 03x
    c = 'h z3;  // yields zz3
    d = 'h 0z3; // yields 0z3
  end

  reg [84:0] e, f, g;

  initial begin
    e = 'h5;    // yields {82{1'b0},3'b101}
    f = 'hx;    // yields {85{1'hx}}
    g = 'hz;    // yields {85{1'hz}}
  end
endmodule
