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
//         If the simulator executes two procedural blocks concurrently and if these procedural
//         blocks contain nonblocking assignment operators to the same variable, the final value
//         of that variable is indeterminate.

// ! TYPE: POSITIVE

module multiple2;

  reg a;

  initial a  = 1;
  initial a <= #4 0;    // schedules 0 at time 4
  initial a <= #4 1;    // schedules 1 at time 4

  // At time 4, a = ??
  // The assigned value of the reg is indeterminate
endmodule
