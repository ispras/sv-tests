/*
 * Copyright 2019 ISP RAS (http://www.ispras.ru)
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
//   16. Assertions
//    16.8 Declaring sequences

// ! TYPE: POSITIVE

module test(clk);

input clk;
reg a, b, c, d, e, f, g, h, i, j, k, l;

sequence s1;
  @(posedge clk) a ##1 b ##1 c;
endsequence

sequence s2;
  @(posedge clk) d ##1 e ##1 f;
endsequence

sequence s3;
  @(negedge clk) g ##1 h ##1 i;
endsequence

sequence s4;
  @(/*edge*/ clk) j ##1 k ##1 l;
endsequence

endmodule
