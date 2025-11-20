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

  int arr[2][][];

  initial begin
    arr[0] = new [4]; // dynamic subarray 'arr[0]' sized to length 4

    arr[0][0] = new [2]; // legal, 'arr[0][n]' created above for n = 0..3

`ifdef NEGATIVE_TEST
    arr[1][0] = new [2]; // illegal, 'arr[1]' not initialized so 'arr[1][0]' does not exist

    arr[0][] = new [2]; // illegal, syntax error - dimension without subscript on left hand side

    arr[0][1][1] = new[2]; // illegal, 'arr[0][1][1]' is an int, not a dynamic array
`endif
  end

endmodule
