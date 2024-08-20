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
//   17. System tasks and functions
//     17.7 Simulation time system functions
//       17.7.1 $time
//         In this example, the reg set is assigned the value 0 at simulation time 16 ns, and the
//         value 1 at simulation time 32 ns. The time values returned by the $time system function
//         are determined by the following steps:
//      a) The simulation times 16 ns and 32 ns are scaled to 1.6 and 3.2 because the time unit
//         for the module is 10 ns; therefore, time values reported by this module are
//         multiples of 10 ns.
//      b) The value 1.6 is rounded to 2, and 3.2 is rounded to 3 because the $time system
//         function returns an integer. The time precision does not cause rounding of these values.

`timescale 10 ns / 1 ns

module test;

  reg set;
  parameter p = 1.55;

  initial begin
    $monitor($time,, "set=", set);
    #p set = 0;
    #p set = 1;
  end
endmodule