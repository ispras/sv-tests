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
//   9. Behavioral modeling
//     9.6 Looping statements
//       Repeat statement: In the following example of a repeat loop, add and shift operators
//       implement a multiplier.

module test;

  parameter size = 8, longsize = 16;
  reg [size:1] opa, opb;
  reg [longsize:1] result;

  initial
    begin : mult
      reg [longsize:1] shift_opa, shift_opb;
      shift_opa = opa;
      shift_opb = opb;
      result = 0;
      repeat (size) begin
        if (shift_opb[1])
          result = result + shift_opa;
        shift_opa = shift_opa << 1;
        shift_opb = shift_opb >> 1;
      end
    end

endmodule
