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
//   10. Assignment statements
//    10.9 Assignment patterns
//     10.9.2 Structure assignment patterns

// ! TYPE: POSITIVE

module top;

  typedef struct {
    logic [7:0] a;
    bit b;
    bit signed [31:0] c;
    string s;
  } sa;

  sa s2;

  initial s2 = '{int:1, default:0, string:""}; // set all to 0 except the array of bits to 1 and string to ""

  initial #10 s2 = '{default:'1, s : ""}; // set all to 1 except 's' to ""

endmodule
