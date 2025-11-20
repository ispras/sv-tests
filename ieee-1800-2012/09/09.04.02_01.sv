/*
 * Copyright 2025 ISP RAS (http://www.ispras.ru)
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

// IEEE Std 1800-2012
//   9. Processes
//    9.4 Procedural timing controls
//     9.4.2 Event control

// ! TYPE: POSITIVE

module top(input clock);

  reg rega, regb, r;

  initial begin
    @r rega = regb; // controlled by any value change in the reg 'r'
    @(posedge clock) rega = regb; // controlled by posedge on 'clock'
    forever @(negedge clock) rega = regb; // controlled by negedge on 'clock'
    forever @(edge clock) rega = regb; // controlled by edge on 'clock'
  end

endmodule
