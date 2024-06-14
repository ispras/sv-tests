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
//       15.5.1 Requirements for accurate simulation
//         If a given signal has a delayed signal in some timing checks but not in others, the
//         delayed signal shall be used in both cases. Explicit delayed signals of del_CLK and
//         del_DATA1 are created for CLK and DATA1, while an implicit delayed signal is created for
//         DATA2. In other words, CLK has only one delayed signal created for it, del_CLK, rather
//         than one explicit delayed signal for the first check and another implicit delayed signal
//         for the second check.

module test(CLK, DATA1, DATA2, del_CLK, del_DATA1);
  input CLK, DATA1, DATA2;
  inout del_CLK, del_DATA1;

  specify

    $setuphold (posedge CLK, DATA1, -10, 20,,,, del_CLK, del_DATA1);
    $setuphold (posedge CLK, DATA2, -15, 18);
  endspecify
endmodule
