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
//     15.2 Timing checks using a stability window
//       15.2.6 $recrem
//         The $recrem timing check combines the functionality of the $removal and $recovery timing
//         checks into a single timing check.

module test(clk, clear);

  input clk, clear;

  specify
    specparam tREC = 1.5, tREM = 2.1;
    $recrem(posedge clear, posedge clk, tREC, tREM);

    // is equivalent in functionality to the following, if tREC and tREM are not negative
    $removal(posedge clear, posedge clk, tREM);
    $recovery(posedge clear, posedge clk, tREC);
  endspecify
endmodule
