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
//   12. Procedural programming statements
//    12.7 Loop statements
//     12.7.3 The foreach-loop

// ! TYPE: POSITIVE

module top;

  string words [2] = '{ "hello", "world" };
  int prod [1:8] [1:3];

  initial begin
    foreach(words [ j ])
      $display(j , words[j]); // print each index and value

    foreach(prod[ k, m ])
      prod[k][m] = k * m; // initialize
  end

endmodule
