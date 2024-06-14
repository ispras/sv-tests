/*
 * Copyright 2018-2024 ISP RAS (http://www.ispras.ru)
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
//         The following examples show the use of the comma (,) as an event logical or operator.

module test(a, b, c, d, e, clk, rstn);
  input a, b, c, d, e, clk, rstn;
  reg r, rega, regb, regc;

  always @(a, b, c, d, e) begin
    r = rega;
  end
  always @(posedge clk, negedge rstn) begin
    r = regb;
  end
  always @(a or b, c, d or e) begin
    r = regc;
  end
endmodule
