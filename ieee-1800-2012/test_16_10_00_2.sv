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
//    16.10 Local variables

// ! TYPE: VARYING

module test;

reg a, b, c, e, f, g;

sequence s1;
  bit x, y;
  a ##1 (b[->1], x = e, y = x && f) ##1 c[*2];
endsequence

sequence s2;
  bit x, y;
  a ##1 (b[->1], x = e, y = x && f) ##1 (c[*2], x = x & g);
endsequence

`ifdef NEGATIVE_TEST
sequence s3;
  bit x;
  a ##1 (b[*0:1], x = e) ##1 c[*2]; // illegal
endsequence
`endif

sequence s4;
  bit x;
  (a ##1 b[*0:1], x = e) ##1 c[*2]; // legal
endsequence

endmodule
