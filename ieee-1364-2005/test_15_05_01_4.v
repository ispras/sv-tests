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
//   15. Timing checks
//     15.5 Notifiers: user-defined responses to timing violations
//       15.5.1 Requirements for accurate simulation
//         The setup time of -7 (the larger in absolute value of -3 and -7) creates a delay of 7
//         for dCLK; therefore, output Q shall not change until 7 time units after a positive edge
//         on CLK, rather than the 6 time units given in the specify path.

module test(CLK, D, dCLK, dD, Q);

  input CLK, D;
  inout dCLK, dD;
  output Q;

  specify
`ifdef NEGATIVE_TEST
    (CLK = Q) = 6; // BUG
`else
    (CLK => Q) = 6;
`endif
    $setuphold(posedge CLK, posedge D, -3,  8, , , , dCLK, dD);
    $setuphold(posedge CLK, negedge D, -7, 13, , , , dCLK, dD);
  endspecify
endmodule
