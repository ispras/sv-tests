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
//  7. Aggregate data types
//   7.8 Associative arrays
//    7.8.7 Allocating associative array elements

// ! TYPE: POSITIVE

module top;

  int a[int] = '{default:1};
  typedef struct { int x = 1, y = 2; } xy_t;
  xy_t b[int];

  initial begin
    a[1]++;
    b[2].x = 5;
  end

endmodule
