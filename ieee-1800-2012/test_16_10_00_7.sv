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

`define true 1'b1

module test;

integer data, data_in, data_out, do1, data1, data2;
reg a, b, c, d, e;

sequence sub_seq1;
  int v1;
  (a ##1 !a, v1 = data_in) ##1 !b[*0:$] ##1 b && (data_out == v1);
endsequence

`ifdef NEGATIVE_TEST
sequence seq1;
  c ##1 sub_seq1 ##1 (do1 == v1);                         // error because v1 is not visible
endsequence
`endif

sequence sub_seq2(lv);
  (a ##1 !a, lv = data_in) ##1 !b[*0:$] ##1 b && (data_out == lv);
endsequence

sequence seq2;
  int v1;
  c ##1 sub_seq2(v1)                                      // v1 is bound to lv
  ##1 (do1 == v1);                                        // v1 holds the value that was assigned to lv
endsequence

`ifdef NEGATIVE_TEST
sequence sub_seq3(lv);
  int lv;                                                 // illegal because lv is a formal argument
  (a ##1 !a, lv = data_in) 
  ##1 !b[*0:$] 
  ##1 b && (data_out == lv);
endsequence
`endif

`ifdef NEGATIVE_TEST
sequence s4;
  int x;
  (a ##1 (b, x = data) ##1 c) or (d ##1 (e==x));            // illegal
endsequence
`endif

`ifdef NEGATIVE_TEST
sequence s5;
  int x,y;
  ((a ##1 (b, x = data, y = data1) ##1 c)
    or (d ##1 (`true, x = data) ##0 (e==x))) ##1 (y==data2);  // illegal because y is not in the intersection
endsequence
`endif

sequence s6;
  int x,y;
  ((a ##1 (b, x = data, y = data1) ##1 c)
    or (d ##1 (`true, x = data) ##0 (e==x))) ##1 (x==data2);  // legal because x is in the intersection
endsequence

`ifdef NEGATIVE_TEST
sequence s7;
  int x,y;
  ((a ##1 (b, x = data, y = data1) ##1 c)
    and (d ##1 (`true, x = data) ##0 (e==x))) ##1 (x==data2); // illegal because x is common to both threads
endsequence
`endif

sequence s8;
  int x,y;
  (a ##1 (b, x = data, y = data1) ##1 c)
    and (d ##1 (`true, x = data) ##0 (e==x)) ##1 (y==data2); // legal because y is in the difference
endsequence

endmodule
