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
//    10.11 Net aliasing

// ! TYPE: NEGATIVE

module top(inout wire [15:0] bus16, inout wire [11:0] low12, high12);
  // The following version of the code above would be illegal because the
  // top 4 bits and bottom 4 bits are the same in both statements:
  alias bus16_0 = {high12[11:8], low12};
  alias bus16_1 = {high12, low12[3:0]};
endmodule
