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
//         The fact that two nonblocking assignments targeting the same variable are in different
//         blocks is not by itself sufficient to make the order of assignments to a variable
//         indeterminate. For example, the value of reg a at the end of time cycle 16 is determinate
//         in the following example.

// ! TYPE: POSITIVE

module multiple3;

  reg a;

  initial #8 a <= #8 1; // executed at time 8;
  // schedules an update of 1 at time 16

  initial #12 a <= #4 0;  // executed at time 12;
  // schedules an update of 0 at time 16
  // Because it is determinate that the update of a to the value 1
  // is scheduled before the update of a to the value 0,
  // then it is determinate that a will have the value 0
  // at the end of time slot 16.
endmodule
