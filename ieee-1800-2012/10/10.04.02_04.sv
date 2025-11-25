/*
 * Copyright 2025 ISP RAS (http://www.ispras.ru)
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

// IEEE Std 1800-2012
//   10. Assignment statements
//    10.4 Procedural assignments
//     10.4.2 Nonblocking procedural assignments

// ! TYPE: POSITIVE

module top;
  logic a;

  initial a = 1; // The assigned value of the variable is determinate

  initial begin
    a <= #4 0; // schedules 'a = 0' at time 4
    a <= #4 1; // schedules 'a = 1' at time 4
  end // At time 4, 'a = 1'
endmodule
