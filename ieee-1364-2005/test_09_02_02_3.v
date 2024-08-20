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
//         Step 1.
//         The simulator evaluates the right-hand side of the nonblocking assignments and schedules
//         the assignments for the end of the current time step.
//         Step 2.
//         At the end of the current time step, the simulator updates the left-hand side of each
//         nonblocking assignment statement.

module non_block1;

  reg a, b;

  initial begin
    a  = 0;
    b  = 1;
    a <= b; // evaluates, schedules, and
    b <= a; // executes in two steps
  end

  initial begin
    $monitor( $time, , "a = %b b = %b", a, b);
    #100 $finish;
  end
endmodule
