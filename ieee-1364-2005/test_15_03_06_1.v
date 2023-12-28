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
//     15.3 Timing checks for clock and control signals
//       15.3.6 $nochange
//         In this example, the $nochange timing check shall report a violation if the data signal
//         changes while clk is high. It shall not be a violation if posedge clk and a transition
//         on data occur simultaneously.

module test;
  input clk, data;

  specify
    $nochange(posedge clk, data, 0, 0) ;
  endspecify
endmodule
