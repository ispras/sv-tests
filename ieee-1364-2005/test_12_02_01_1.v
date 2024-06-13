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
//     12.2 Overriding module parameter values
//       12.2.1 defparam statement
//         Each instantiation of a generate block is considered to be a separate hierarchy scope.
//         Therefore, this rule implies that a defparam statement in a generate block may not target
//         a parameter in another instantiation of the same generate block, even when the other
//         instantiation is created by the same loop generate construct. For example, the following
//         code is not allowed.

module flop(
  input in, in1,
  output out1);
endmodule

module test(in, in1, out1);
  input [7:0] in, in1;
  output [7:0] out1;

  genvar i;

  generate
    for (i = 0; i < 8; i = i + 1) begin : somename
      flop my_flop(in[i], in1[i], out1[i]);
      `ifdef NEGATIVE_TEST
      defparam somename[i+1].my_flop.xyz = i; // incorrect code
      `endif
    end
  endgenerate

endmodule
