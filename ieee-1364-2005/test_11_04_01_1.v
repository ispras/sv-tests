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
//   11. Scheduling semantics
//     11.4 Verilog simulation reference model
//       11.4.1 Determinism
//         Consider the following example. When this block is executed, there will be two events
//         added to the nonblocking assign update queue. The previous rule requires that they be
//         entered on the queue in source order; this rule requires that they be taken from the
//         queue and performed in source order as well. Hence, at the end of simulation time 0,
//         the variable a will be assigned 0 and then 1.

// ! TYPE: POSITIVE

module test;

  reg a;

  initial begin
    a <= 0;
    a <= 1;
  end
endmodule
