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
//   7.5 Dynamic arrays
//    7.5.1 New[ ]

// ! TYPE: VARYING

module top;

  int arr1 [][2][3] = new [4]; // 'arr1' sized to length 4; elements are
                               // fixed-size arrays and so do not require initializing
  int arr2 [][] = new [4]; // 'arr2' sized to length 4; dynamic subarrays
                           // remain unsized and uninitialized
`ifdef NEGATIVE_TEST
  int arr3 [1][2][] = new [4]; // Error – arr3 is not a dynamic array, though
                               // it contains dynamic subarrays
`endif

endmodule
