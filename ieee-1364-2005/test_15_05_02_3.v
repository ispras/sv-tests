/*
 * Copyright 2018-2024 ISP RAS (http://www.ispras.ru)
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
//       15.5.2 Conditions in negative timing checks
//         The following $setuphold check is equivalent to the separate $setup and
//         $hold checks shown above.

module test(input CP, D, TI, inout dTE, dTI, dD);

  reg TE_cond_D, TE_cond_TI;
  reg DXTI_cond;
  reg notifier;

  assign TE_cond_D  = (dTE !== 1'b1);
  assign TE_cond_TI = (dTE !== 1'b0);
  assign DXTI_cond  = (dTI !==   dD);

  specify
    $setuphold(posedge CP, D, -10,  20, notifier, ,TE_cond_D,  dCP, dD);
    $setuphold(posedge CP, TI, 20, -10, notifier, ,TE_cond_TI, dCP, dTI);
    $setuphold(posedge CP, TE, -4,   8, notifier, ,DXTI_cond,  dCP, dTE);
  endspecify
endmodule
