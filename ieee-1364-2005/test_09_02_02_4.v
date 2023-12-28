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
//   9. Behavioral modeling
//     9.2 Procedural assignments
//       9.2.2 The nonblocking procedural assignment
//         The order of the execution of distinct nonblocking assignments to a given variable shall
//         be preserved. In other words, if there is clear ordering of the execution of a set of
//         nonblocking assignments, then the order of the resulting updates of the destination of
//         the nonblocking assignments shall be the same as the ordering of the execution.

module multiple;
  reg a;
  initial a = 1;
  // The assigned value of the reg is determinate
  initial begin
    a <= #4 0;   // schedules a = 0 at time 4
    a <= #4 1;   // schedules a = 1 at time 4
  end // At time 4, a = 1
endmodule
