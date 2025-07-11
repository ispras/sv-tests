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
//   12. Hierarchical structures
//     12.4 Generate constructs
//       12.4.1 Loop generate constructs
//         Examples of legal and illegal generate loops.

// ! TYPE: VARYING

module mod_a;

  genvar i;

  // "generate", "endgenerate" keywords are not required
  for (i = 0; i < 5; i = i + 1) begin : a

`ifdef NEGATIVE_TEST
    for (i = 0; i < 5; i = i + 1) begin : b
    ... // error -- using "i" as loop index for
    ... // two nested generate loops
    end
`endif

  end
endmodule

module mod_b;

  genvar i;
  reg a;

`ifdef NEGATIVE_TEST
  for (i = 1; i < 0; i = i + 1) begin : a
    // error -- "a" conflicts with name of reg "a"
  end
`endif
endmodule

module mod_c;

  genvar i;

  for (i = 1; i < 5; i = i + 1) begin : a
  // some code
  end

`ifdef NEGATIVE_TEST
  for (i = 10; i < 15; i = i + 1) begin : a
    // error -- "a" conflicts with name of previous
    // loop even though indices are unique
  end
`endif
endmodule
