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
//     17.5 Programmable logic array (PLA) modeling system tasks
//       17.5.4 Logic array personality formats
//         Example 2 — An example of the usage of the plane format tasks follows. The logical
//         function of this PLA is shown first, followed by the PLA personality in the new format,
//         the Verilog HDL description using the $async$and$plane system task, and finally the
//         result of running the simulation.

module pla;

  `define rows 4
  `define cols 3

  reg [1:`cols] a, mem[1:`rows];
  reg [1:`rows] b;

  initial begin
    // PLA system call
    $async$and$plane(mem, a[1:3], b[1:4]);
    mem[1] = 3'b10?;
    mem[2] = 3'b??1;
    mem[3] = 3'b0?0;
    mem[4] = 3'b???;
    // stimulus and display
    #10 a = 3'b111;
    #10  $displayb(a, " -> ", b);
    #10 a = 3'b000;
    #10  $displayb(a, " -> ", b);
    #10 a = 3'bxxx;
    #10  $displayb(a, " -> ", b);
    #10 a = 3'b101;
    #10  $displayb(a, " -> ", b);
  end
endmodule