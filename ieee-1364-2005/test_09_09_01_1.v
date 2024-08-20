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
//     9.9 Structured procedures
//       9.9.1 Initial construct
//         The following example illustrates use of the initial construct for initialization of
//         variables at the start of simulation.

module test;

  parameter size = 10;
  reg areg;
  reg memory[size : 0];
  integer index;

  initial begin
    index = 0;
    areg = 0; // initialize a reg
    for (index = 0; index < size; index = index + 1)
      memory[index] = 0; //initialize memory word
  end
endmodule
