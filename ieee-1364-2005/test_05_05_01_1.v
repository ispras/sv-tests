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
//   5. Expressions
//     5.5 Signed expressions
//       5.5.1 Rules for expression types
//         Part-select results are unsigned, regardless of the operands even if the part-select
//         specifies the entire vector.

// ! TYPE: POSITIVE

module test;

  reg [15:0] a;
  reg signed [7:0] b;

  initial begin
    a = b[7:0]; // b[7:0] is unsigned and therefore zero-extended
  end
endmodule
