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
//       Example 3 — To perform the previous sample setup check on the positive clk edge only when
//       clr and set are high, add the following statement outside the specify block.

module test(input clk, data, clr, set, inout clr_and_set);

  and new_gate(clr_and_set, clr, set);

  specify
    // Then add the condition to the timing check using the signal clr_and_set as follows
    $setup(data, posedge clk &&& clr_and_set, 10);
  endspecify
endmodule
