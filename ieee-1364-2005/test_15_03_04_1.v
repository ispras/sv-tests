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
//   15. Timing checks
//     15.3 Timing checks for clock and control signals
//       15.3.4 $width
//          Here is a legal $width check when the notifier is required and the threshold is not.

module test(clk);
  input clk;
  reg ntfr_reg;

  specify
    $width (posedge clk, 6, 0, ntfr_reg);
  endspecify
endmodule
