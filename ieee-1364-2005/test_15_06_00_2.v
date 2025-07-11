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
//   15. Timing checks
//     15.6 Enabling timing checks with conditioned events
//       Example 2 — This example shows two ways to trigger the same timing check as in Example 1
//       (on the positive clk edge) only when clr is low. The second method uses the === operator,
//       which makes the comparison deterministic.

// ! TYPE: POSITIVE

module test(data, clk);

  input data, clk;

  specify
    $setup(data, posedge clk &&& ( ~ clr), 10) ;
    $setup(data, posedge clk &&& (clr === 0), 10);
  endspecify
endmodule
