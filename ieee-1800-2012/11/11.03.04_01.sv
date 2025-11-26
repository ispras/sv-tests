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
//   11. Operators and expressions
//    11.3 Operators
//     11.3.4 Operations on logic (4-state) and bit (2-state) types

// ! TYPE: POSITIVE

module top;

  int n = 8, zero = 0;
  int res = 'b01xz | n; // 'res' gets 'b11xz coerced to 'int', or 'b1100
  int sum = n + n; // 'sum' gets 16 coerced to 'int', or 16
  int sumx = 'x + n; // 'sumx' gets 'x coerced to 'int', or 0
  int div2 = n / zero + n; // 'div2' gets 'x coerced to 'int', or 0
  integer div4 = n / zero + n; // 'div4' gets 'x

endmodule
