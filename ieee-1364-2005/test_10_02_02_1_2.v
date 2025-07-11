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
//     10.2 Tasks and task enabling
//       10.2.2 Task enabling and argument passing
//         Using the second form of a task declaration, the task could be defined as follows.

// ! TYPE: POSITIVE

module test;

  reg foo1, foo2, foo3;

  task my_task(input a, b, inout c, output d, e);
    begin
      // statements that perform the work of the task
      foo1 = 0;
      foo2 = 1;
      foo3 = 3;
      c = foo1;  // the assignments that initialize result regs
      d = foo2;
      e = foo3;
    end
  endtask
endmodule
