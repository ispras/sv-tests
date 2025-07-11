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
//       17.5.1 Array types
//         The following example illustrates modeling of both synchronous
//         and asynchronous arrays is provided by the PLA system tasks.

// ! TYPE: POSITIVE

module test;

  wire a1, a2, a3, a4, a5, a6, a7;
  reg  b1, b2, b3;
  wire [1:7] awire;
  reg  [1:3] breg;
  reg [0:7] mem[1:256];

  initial begin
    $async$and$array(mem, {a1, a2, a3, a4, a5, a6, a7}, {b1, b2, b3});

    // is equivalent
    $async$and$array(mem, awire, breg);

    // An example of a synchronous system call is as follows
    $sync$or$plane(mem, {a1, a2, a3, a4, a5, a6, a7}, {b1, b2, b3});
  end

endmodule