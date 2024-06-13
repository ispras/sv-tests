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
//     9.7 Procedural timing controls
//       9.7.4 Event or operator
//         The next two examples show the logical or of two and three events, respectively

module test(clk_a, clk_b, trig, enable);
  input clk_a, clk_b, trig, enable;
  reg r, rega, regb;

  initial begin
    @(trig or enable) rega = regb; // controlled by trig or enable
    @(posedge clk_a or posedge clk_b or trig) rega = regb;
  end
endmodule
