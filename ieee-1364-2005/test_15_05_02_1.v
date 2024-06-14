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
//     15.5 Notifiers: user-defined responses to timing violations
//       15.5.2 Conditions in negative timing checks
//         This pair of $setup and $hold checks works together to provide the same check as
//         a single $setuphold. clk is the timecheck event for the $setup check, while data is the
//         timecheck event for the $hold check.

module test(clk, data, cond1, ntfr);
  input clk, data, cond1;
  reg ntfr;

  specify
    specparam tsetup = 1.2, thold = 1.3;
    $setup (data, clk &&& cond1, tsetup, ntfr);
    $hold (clk, data &&& cond1, thold, ntfr);
  endspecify
endmodule
