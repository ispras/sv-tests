/*
 * Copyright 2019 ISP RAS (http://www.ispras.ru)
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
//   16. Assertions
//    16.8 Declaring sequences
//     16.8.2 Local variable formal arguments in sequence declarations

module test;

reg b_d, d_d;

sequence legal_loc_var_formal (
  local inout logic a,
  local logic b = b_d,    // input inferred, default actual argument b_d
  c,                      // local input logic inferred, no default
                          // actual argument
  d = d_d,                // local input logic inferred, default actual
                          // argument d_d
  logic e, f              // e and f are not local variable formal arguments
);

  logic g = c, h = g || d;

  a ##1 g ##1 h;
endsequence

endmodule
