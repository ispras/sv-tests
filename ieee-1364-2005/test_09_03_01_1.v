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
//     9.3 Procedural continuous assignments
//       9.3.1 The assign and deassign procedural statements
//         The following example shows a use of the assign and deassign procedural statements in a
//         behavioral description of a D-type flip-flop with preset and clear inputs.

module dff(q, d, clear, preset, clock);

  output q;
  input d, clear, preset, clock;

  reg q;

  always @(clear or preset)
    if (!clear)
      assign q = 0;
    else if (!preset)
      assign q = 1;
    else
      deassign q;

  always @(posedge clock)
    q = d;
endmodule
