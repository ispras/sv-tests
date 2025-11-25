/*
 * Copyright 2025 ISP RAS (http://www.ispras.ru)
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
//   10. Assignment statements
//    10.10 Unpacked array concatenation
//     10.10.3 Nesting of unpacked array concatenations

// ! TYPE: POSITIVE

module top;

  string S1, S2;
  typedef string T_SQ[$];
  T_SQ SQ, SQ1, SQ2;

  initial begin
    S1 = "S1";
    S2 = "S2";
    SQ = '{"element 0", "element 1"}; // assignment pattern, two strings
    SQ1 = {S1, SQ, {"element 3 is ", S2} }; // result: '{"S1", "element 0", "element 1", "element 3 is S2"}
    SQ2 = {S1, SQ, T_SQ'{"element 3 is ", S2} }; // result: '{"S1", "element 0", "element 1", "element 3 is ", "S2"}
  end

endmodule
