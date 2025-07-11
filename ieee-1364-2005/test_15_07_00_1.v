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
//     15.7 Vector signals in timing checks
//       Example 3 — To perform the previous sample setup check on the positive clk edge only when
//       clr and set are high, add the following statement outside the specify block.

// ! TYPE: POSITIVE

module DFF (Q, CLK, DAT);

  input CLK;
  input [7:0] DAT;
  output [7:0] Q;

  always @(posedge CLK) begin
    force Q = DAT;
    release Q;
  end

  specify
    $setup(DAT, posedge CLK, 10);
  endspecify
endmodule
