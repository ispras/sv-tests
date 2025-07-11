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
//   19. Compiler directives
//     19.8 `timescale
//       The following example shows a `timescale directive in the context of a module. The
//       `timescale 10 ns / 1 ns compiler directive specifies that the time unit for module test is
//       10 ns. As a result, the time values in the module are multiples of 10 ns, rounded to the
//       nearest 1 ns; therefore, the value stored in parameter d is scaled to a delay of 16 ns. In
//       other words, the value 0 is assigned to reg set at simulation time 16 ns (1.6 × 10 ns),
//       and the value 1 at simulation time 32 ns.

// ! TYPE: POSITIVE

`timescale 10 ns / 1 ns

module test;
  reg set;
  parameter d = 1.55;

  initial begin
    #d set = 0;
    #d set = 1;
  end
endmodule
