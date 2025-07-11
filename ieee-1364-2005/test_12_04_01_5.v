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
//         The hierarchical generate block instance names in a multilevel generate loop are shown
//         in Example 5. For each block instance created by the generate loop, the generate block
//         identifier for the loop is indexed by adding the “[genvar value]” to the end of the
//         generate block identifier. These names can be used in hierarchical path names.

// ! TYPE: POSITIVE

module M1;
  initial begin
  end
endmodule

module M2;
  initial begin
  end
endmodule

module M3;
  initial begin
  end
endmodule

module M4;
  initial begin
  end
endmodule

module test;

  parameter SIZE = 2;
  genvar i, j, k, m;
  generate

    for (i = 0; i < SIZE; i = i + 1) begin : B1 // scope B1[i]

      M1 N1(); // instantiates B1[i].N1

      for (j = 0; j < SIZE; j = j + 1) begin : B2 // scope B1[i].B2[j]

        M2 N2(); // instantiates B1[i].B2[j].N2

        for (k = 0; k < SIZE; k = k + 1) begin : B3 // scope B1[i].B2[j].B3[k]

          M3 N3(); // instantiates B1[i].B2[j].B3[k].N3
        end
      end
      if (i > 0) begin : B4 // scope B1[i].B4

        for (m = 0; m < SIZE; m = m + 1) begin : B5 // scope B1[i].B4.B5[m]

          M4 N4(); // instantiates B1[i].B4.B5[m].N4
        end
      end
    end
  endgenerate
endmodule
