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
//   10. Tasks and functions
//     10.3 Disabling of named blocks and tasks
//       This example shows the disable statement being used in an equivalent way to the two
//       statements continue and break in the C programming language. The example illustrates
//       control code that would allow a named block to execute until a loop counter reaches n
//       iterations or until the variable a is set to the value of b. The named block break contains
//       the code that executes until a == b, at which point the disable break; statement terminates
//       execution of that block. The named block continue contains the code that executes for each
//       iteration of the for loop. Each time this code executes the disable continue; statement,
//       the continue block terminates, and execution passes to the next iteration of the for
//       loop. For each iteration of the continue block, a set of statements executes if (a != 0).
//       Another set of statements executes if (a! = b).

module test(clk);
  parameter n = 32;
  input clk;
  reg a, b, rega, regb, regc;
  integer i;

  initial
    begin : break
      for (i = 0; i < n; i = i+1) begin : continue
        @clk
        if (a == 0) // "continue" loop
          disable continue;
        rega = regb;
        regb = regc;
        @clk
        if (a == b) // "break" from loop
          disable break;
        regc = rega;
        regb = rega;
      end
  end

endmodule
