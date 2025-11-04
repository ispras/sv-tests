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
//   5. Lexical conventions
//    5.11 Array literals

// ! TYPE: POSITIVE

module top;
  int n[1:2][1:3];
  int m[1:2][1:6];

  typedef int triple [1:3];
  triple t;
  triple b;

  initial begin
    n = '{'{0,1,2}, '{3{4}}};
    m = '{2{'{3{4, 5}}}};
    t = triple'{0,1,2};
    b = '{1:1, default:0};
  end
endmodule