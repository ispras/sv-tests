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
//       9.2.1 Blocking procedural assignments
//         The following examples show blocking procedural assignments.

module test;

  reg [0:5] rega, regb, carry, acc;
  reg [5:0] mema[5:0];
  integer address;

  initial begin
    rega = 0;
    rega[3] = 1;                // a bit-select
    rega[3:5] = 7;              // a part-select
    mema[address] = 8'hff;      // assignment to a mem element
    {carry, acc} = rega + regb; // a concatenation
  end
endmodule
