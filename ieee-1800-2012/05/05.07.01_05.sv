/*
 * Copyright 2025 ISP RAS (http://www.ispras.ru)
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

// IEEE Std 1800-2012
//   5. Lexical conventions
//    5.7 Numbers
//     5.7.1 Integer literal constants

// ! TYPE: POSITIVE

module top;
  logic [15:0] a, b, c, d;
  initial begin
    a = '0; // sets all 16 bits to 0
    b = '1; // sets all 16 bits to 1
    c = 'x; // sets all 16 bits to x
    d = 'z; // sets all 16 bits to z
  end
endmodule