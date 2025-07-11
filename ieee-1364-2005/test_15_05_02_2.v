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
//     15.5 Notifiers: user-defined responses to timing violations
//       15.5.2 Conditions in negative timing checks
//         The following $setuphold check is equivalent to the separate $setup and
//         $hold checks shown above.

// ! TYPE: POSITIVE

module test(clk, data, cond1);

  input clk, data, cond1;
  reg ntfr;

  specify
    specparam tsetup = 1.2, thold = 1.3;
    $setuphold(clk, data, tsetup, thold, ntfr, , cond1);
  endspecify
endmodule
