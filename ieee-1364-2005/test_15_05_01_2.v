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
//         Implicit delayed signals shall be created for CLK, DATA1, and DATA2, one for each. Even
//         though CLK is referenced in two different timing checks, only one implicit delayed signal
//         is created, and it is used for both timing checks.

// ! TYPE: POSITIVE

module test(CLK, DATA1, DATA2);

  input CLK, DATA1, DATA2;

  specify
    $setuphold(posedge CLK, DATA1, -10, 20);
    $setuphold(posedge CLK, DATA2, -15, 18);
  endspecify
endmodule
