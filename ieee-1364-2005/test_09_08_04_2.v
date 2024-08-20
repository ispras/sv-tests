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
//     9.8 Block statements
//       9.8.4 Start and finish times
//         When an assignment is to be made after two separate events have occurred, known as the
//         joining of events, a fork-join block can be useful. The two events can occur in any order
//         (or even at the same simulation time), the fork-join block will complete, and the
//         assignment will be made. In contrast, if the fork-join block was a begin-end block and
//         the Bevent occurred before the Aevent, then the block would be waiting for
//         the next Bevent.

module test;

  event Aevent, Bevent;
  reg areg, breg;

  initial begin
    fork
      @Aevent;
      @Bevent;
    join
    areg = breg;
  end
endmodule
