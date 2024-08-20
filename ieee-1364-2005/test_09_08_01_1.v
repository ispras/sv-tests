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
//     9.8 Block statements
//       9.8.1 Sequential blocks
//         A sequential block enables the following two assignments to have a deterministic result.
//         The first assignment is performed, and areg is updated before control passes to the
//         second assignment.

module test;

  reg areg, breg, creg;

  initial begin
    areg = breg;
    creg = areg;     // creg stores the value of breg
  end
endmodule
