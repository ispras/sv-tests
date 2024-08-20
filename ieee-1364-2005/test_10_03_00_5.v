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
//       This example shows the disable statement being used to disable concurrently a sequence of
//       timing controls and the task action when the reset event occurs. The example shows a
//       fork-join block within which are a named sequential block (event_expr) and a disable
//       statement that waits for occurrence of the event reset. The sequential block and the wait
//       for reset execute in parallel. The event_expr block waits for one occurrence of event ev1
//       and three occurrences of event trig. When these four events have happened, plus a delay
//       of d time units, the task action executes. When the event reset occurs, regardless
//       of events within the sequential block, the fork-join block terminates—including the task
//       action.

module test(clk, reset, ev1, trig);

  parameter d = 1;
  input clk, reset, ev1, trig;
  reg areg, breg;

  task action;
    input areg, breg;
    reg temp;
    begin
      temp = areg + breg;
    end
  endtask

  initial begin
    fork
      begin : event_expr
        @ev1;
        repeat(3) @trig;
        #d action(areg, breg);
      end
      @reset disable event_expr;
  join
  end
endmodule
