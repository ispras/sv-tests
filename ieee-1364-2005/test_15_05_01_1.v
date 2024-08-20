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
//       15.5.1 Requirements for accurate simulation
//         Implicit delayed signals shall be created for CLK and DATA, but it shall not be possible
//         to access them. The $setuphold check shall be properly evaluated, but functional behavior
//         shall not always be accurate. The old DATA value shall be incorrectly clocked in if DATA
//         transitions between posedge CLK and 10 time units later.

module test(CLK, DATA);

  input CLK, DATA;

  specify
    $setuphold(posedge CLK, DATA, -10, 20);
  endspecify
endmodule
