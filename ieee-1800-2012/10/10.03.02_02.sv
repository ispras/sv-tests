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
//    10.3 Continuous assignments
//     10.3.2 The continuous assignment statement

// ! TYPE: POSITIVE

module top(sum_out, carry_out, carry_in, ina, inb);
  output [3:0] sum_out;
  output carry_out;
  input [3:0] ina, inb;
  input carry_in;

  wire carry_out, carry_in;
  wire [3:0] sum_out, ina, inb;

  assign {carry_out, sum_out} = ina + inb + carry_in;
endmodule
