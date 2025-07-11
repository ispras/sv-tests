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
//     11.5 Race conditions
//       11.4.1 Determinism
//         Because the execution of expression evaluation and net update events may be intermingled,
//         race conditions are possible. The simulator is correct in displaying either a 1 or a 0.
//         The assignment of 0 to q enables an update event for p. The simulator may either continue
//         and execute the $display task or execute the update for p, followed by the $display task.

// ! TYPE: POSITIVE

module test;

  reg q;
  wire p;

  assign p = q;

  initial begin
    q = 1;
    #1 q = 0;
    $display(p);
  end
endmodule
