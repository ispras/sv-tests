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
//   17. System tasks and functions
//     17.9 Probabilistic distribution functions
//       17.9.1 $random function
//         Example 2 — The following example shows how adding the concatenation operator to the
//         preceding example gives rand a positive value from 0 to 59.

module test;
  reg [23:0] rand;
  initial assign rand = {$random} % 60;
endmodule
