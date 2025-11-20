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
//   7.6 Array assignments

// ! TYPE: VARYING

module top;

  int A[2][100:1];
  int B[] = new[100]; // dynamic array of 100 elements
  int C[] = new[8];
  int D [3][][]; // dynamic array of 8 elements

  initial begin
    D[2] = new [2]; // multidimensional array with dynamic subarrays
    D[2][0] = new [100]; // initialize one of D's dynamic subarrays

    A[1] = B; // OK. Both are arrays of 100 ints
`ifdef NEGATIVE_TEST
    A[1] = C; // type check error: different sizes (100 vs. 8 ints)
    A = D[2]; // 'A[0:1][100:1]' and subarray 'D[2][0:1][0:99]' both
              // comprise 2 subarrays of 100 ints
`endif
  end

endmodule
