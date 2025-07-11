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
//         The following example shows how the value of i[0] is assigned to r1 and how the
//         assignments are scheduled to occur after each time delay.

// ! TYPE: POSITIVE

module multiple4;

  reg r1;
  reg [2:0] i;

  initial begin
    // makes assignments to r1 without cancelling previous assignments
    for (i = 0; i <= 5; i = i+1)
      r1 <= # (i*10) i[0];
  end
endmodule
