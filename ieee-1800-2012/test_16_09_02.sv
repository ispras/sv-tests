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
//    16.9 Sequence operations
//     16.9.2 Repetition in sequences

// ! TYPE: POSITIVE

`define true 1'b1

module test;

reg a, b, c, e;

sequence seq1;
  a ##1 b ##1 b ##1 b ##1 c;
endsequence

sequence seq2;
  a ##1 b [*3] ##1 c;
endsequence

sequence seq3;
  a [*3];
endsequence

sequence seq4;
  a ##1 a ##1 a;
endsequence

sequence seq5;
  a [*0];               // Using 0 as the repetition number, an empty sequence results
endsequence

sequence seq6;
  b ##1 ( a[*0] ##0 c);
endsequence

sequence seq7;
  b ##1 a[*0:1] ##2 c;
endsequence

sequence seq8;
  (b ##2 c) or (b ##1 a ##2 c);
endsequence

sequence seq9;
  `true ##3 (a [*3]);   // means `true ##1 `true ##1 `true ##1 a ##1 a ##1 a
endsequence

sequence seq10;
  (`true ##2 a) [*3];   // means (`true ##2 a) ##1 (`true ##2 a) ##1
                        // (`true ##2 a), which in turn means `true ##1 `true ##1;
                        // a ##1 `true ##1 `true ##1 a ##1 `true ##1 `true ##1 a
endsequence

sequence seq11;
  (a ##2 b) [*5];
endsequence

sequence seq12;
  (a ##2 b ##1 a ##2 b ##1 a ##2 b ##1 a ##2 b ##1 a ##2 b);
endsequence

sequence seq13;
  (a ##2 b)[*1:5];
endsequence

sequence seq14;
  (a ##2 b)
  or (a ##2 b ##1 a ##2 b)
  or (a ##2 b ##1 a ##2 b ##1 a ##2 b)
  or (a ##2 b ##1 a ##2 b ##1 a ##2 b ##1 a ##2 b)
  or (a ##2 b ##1 a ##2 b ##1 a ##2 b ##1 a ##2 b ##1 a ##2 b);
endsequence

sequence seq15;
  (a[*0:3] ##1 b ##1 c);
endsequence

sequence seq16;
  (b ##1 c)
  or (a ##1 b ##1 c)
  or (a ##1 a ##1 b ##1 c)
  or (a ##1 a ##1 a ##1 b ##1 c);
endsequence

sequence seq17;
  a ##1 b [*1:$] ##1 c;
endsequence

sequence seq18;
  a ##1 b [->2:10] ##1 c;
endsequence

sequence seq19;
  a ##1 ((!b[*0:$] ##1 b) [*2:10]) ##1 c;
endsequence

sequence seq20;
  a ##1 b [=2:10] ##1 c;
endsequence

sequence seq21;
  a ##1 ((!b [*0:$] ##1 b) [*2:10]) ##1 !b[*0:$] ##1 c;
endsequence

sequence seq22;
  bit v;
  (b[->1], v = e)[*2];
endsequence

`ifdef NEGATIVE_TEST
sequence seq23;
  (b, v = e)[->2];        // illegal:
endsequence
`endif

endmodule
