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
//   11. Operators and expressions
//    11.13 Let construct

// ! TYPE: VARYING

module top;

  wire a, b;
  wire [2:0] c;
  wire [2:0] d;
  wire e;

  for (genvar i = 0; i < 3; i++) begin : L0
    if (i != 1) begin : L1
      let my_let(x) = !x || b && c[i];
      assign d[2 - i] = my_let(a); // OK
    end : L1
  end : L0
`ifdef NEGATIVE_TEST
  assign e = L0[0].L1.my_let(a); // Illegal
`endif

endmodule
