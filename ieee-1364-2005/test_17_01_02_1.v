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
//     17.1 Display system tasks
//       17.1.2 Strobed monitoring
//         In this example, $strobe writes the time and data information to the standard output and
//         the log file at each negative edge of the clock. The action shall occur just before
//         simulation time is advanced and after all other events at that time have occurred so that
//         the data written are sure to be the correct data for that simulation time.

module test(clock, data);
  input clock, data;

  initial begin
    forever @( negedge clock)
      $strobe ("At time %d, data is %h", $time, data);
  end
endmodule
