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

  struct {
    int A;
    struct {
      int B, C;
    } BC1, BC2;
  } ABC, DEF;

  initial begin
    ABC = '{A:1, BC1:'{B:2, C:3}, BC2:'{B:4,C:5}};
    DEF = '{default:10};
  end

endmodule
