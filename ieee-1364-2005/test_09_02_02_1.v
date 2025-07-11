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
//     9.2 Procedural assignments
//       9.2.2 The nonblocking procedural assignment
//         The nonblocking procedural assignments shall be evaluated in two steps as discussed
//         in Clause 11. These two steps are shown in the following example.
//
//         Step 1.
//         At posedge c, the simulator evaluates the right-hand sides of the nonblocking assignments
//         and schedules the assignments of the new values at the end of the
//         nonblocking assign update events.
//
//         Step2.
//         When the simulator activates the nonblocking assign update events, the simulator updates
//         the left-hand side of each nonblocking assignment statement.

// ! TYPE: POSITIVE

module evaluates2(out);

  output out;
  reg a, b, c;

  initial begin
    a = 0;
    b = 1;
    c = 0;
  end

  always  c = #5 ~c;

  always @(posedge c) begin
    a <= b; // evaluates, schedules,
    b <= a; // and executes in two steps
  end
endmodule
