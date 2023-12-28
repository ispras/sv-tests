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
//     16.8.2 Local variable formal arguments in sequence declarations

module test;

integer data_in, data_out, data, do1;
reg a, b, c;

sequence sub_seq2(local inout int lv);
  (a ##1 !a, lv = lv + data_in)
  ##1 !b[*0:$] ##1 b && (data_out == lv);
endsequence

sequence seq2;
  int v1;
  (c, v1 = data)
  ##1 sub_seq2(v1)  // lv is initialized by assigning it the value of v1;
                    // when the instance sub_seq2(v1) matches, v1 is
                    // assigned the value of lv
  ##1 (do1 == v1);
endsequence

endmodule
