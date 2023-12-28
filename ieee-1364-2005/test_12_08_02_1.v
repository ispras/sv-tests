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
//     12.8 Elaboration
//       12.8.2 Early resolution of hierarchical names
//         In order to comply with this algorithm, hierarchical names in some defparam statements
//         will need to be resolved prior to the full elaboration of the hierarchy. It is possible
//         that when elaboration is complete, rules for name resolution would dictate that a
//         hierarchical name in a defparam statement would have resolved differently had early
//         resolution not been required. This could result in a situation where an identical
//         hierarchical name in some other statement in the same scope would resolve differently
//         from the one in the defparam statement. Below is an example of a design
//         that has this problem.

module m;
  m1 n();
endmodule

module m1;
  parameter p = 2;

  defparam m.n.p = 1;

  initial $display (m.n.p);

  generate
    if (p == 1) begin : m
      m2 n();
    end
  endgenerate

endmodule

module m2;
  parameter p = 3;
endmodule
