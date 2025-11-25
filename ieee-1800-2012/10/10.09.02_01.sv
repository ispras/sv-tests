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
//    10.9 Assignment patterns
//     10.9.2 Structure assignment patterns

// ! TYPE: POSITIVE

module top;
  typedef struct {
  int x;
  int y;
  } st;

  st s1;
  int k = 1;

  initial begin
    #1 s1 = '{1, 2+k}; // by position
    #1 $display( s1.x, s1.y);
    #1 s1 = '{x:2, y:3+k}; // by name
    #1 $display( s1.x, s1.y);
    #1 $finish;
  end
endmodule
