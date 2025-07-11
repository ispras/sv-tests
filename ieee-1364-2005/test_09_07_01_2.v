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
//     9.7 Procedural timing controls
//       9.7.1 Delay control
//         The next three examples provide an expression following the number sign (#). Execution
//         of the assignment is delayed by the amount of simulation time specified by the value of
//         the expression.

// ! TYPE: POSITIVE

module test;

  parameter d = 1, e = 1;
  reg rega, regb;
  integer regr;

  initial begin
    regr = 5;
    #d rega = regb;         // d is defined as a parameter
    #((d+e)/2) rega = regb; // delay is average of d and e
    #regr regr = regr + 1;  // delay is the value in regr
  end
endmodule
