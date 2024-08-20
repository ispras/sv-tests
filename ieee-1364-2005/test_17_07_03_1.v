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
//       17.7.3 $realtime
//         In this example, the event times in the reg  set  are multiples of 10 ns because 10 ns is
//         the time unit of the module. They are real numbers because $realtime returns a real
//         number.

`timescale 10 ns / 1 ns

module test;

  reg set;
  parameter p = 1.55;

  initial begin
    $monitor($realtime,, "set=", set);
    #p set = 0;
    #p set = 1;
  end
endmodule