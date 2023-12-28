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

sequence seq2_inlined;
  int v1, lv;
  (c, v1 = data) ##1
  (
    (1, lv = v1) ##0
    (a ##1 !a, lv = lv + data_in)
    ##1 (!b[*0:$] ##1 b && (data_out == lv), v1 = lv)
  )
  ##1 (do1 == v1);
endsequence

endmodule
