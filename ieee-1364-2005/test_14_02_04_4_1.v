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
//   14. Specify blocks
//     14.2 Module path declarations
//       14.2.4 State-dependent paths
//         14.2.4.4 The ifnone condition
//           Example 1—The following are valid state-dependent path combinations.

module test;
  input C1, IN, OUT, opcode, i1, i2, o1, CLK, Q, D;

  specify
    if (C1)(IN => OUT) = (1,1);
    ifnone (IN => OUT) = (2,2);
    // add operation
    if (opcode == 2'b00) (i1,i2 *> o1) = (25.0, 25.0);
    // pass-through i1 operation
    if (opcode == 2'b01) (i1 => o1) = (5.6, 8.0);
    // pass-through i2 operation
    if (opcode == 2'b10) (i2 => o1) = (5.6, 8.0);
    // all other operations
    ifnone (i2 => o1) = (15.0, 15.0);
    (posedge CLK => (Q +: D)) = (1,1);
    ifnone (CLK => Q) = (2,2);
  endspecify
endmodule
