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
//   10. Assignment statements
//    10.11 Net aliasing

// ! TYPE: POSITIVE

`ifndef LIB_DFF
  `define LIB_DFF lib1_dff
`endif

module lib1_dff(Reset, Clk, Data, Q, Q_Bar);
  input Reset, Clk, Data;
  output Q, Q_Bar;
endmodule

module lib2_dff(reset, clock, data, q, qbar);
  input reset, clock, data;
  output q, qbar;
endmodule

module lib3_dff(RST, CLK, D, Q, Q_);
  input RST, CLK, D;
  output Q, Q_;
endmodule

module top(rst, clk, d, q, q_bar); // wrapper cell
  input rst, clk, d;
  output q, q_bar;
  alias rst = Reset = reset = RST;
  alias clk = Clk = clock = CLK;
  alias d = Data = data = D;
  alias q = Q;
  alias Q_ = q_bar = Q_Bar = qbar;
  `LIB_DFF top (.*); // 'LIB_DFF' is any of 'lib1_dff', 'lib2_dff' or 'lib3_dff'
endmodule
