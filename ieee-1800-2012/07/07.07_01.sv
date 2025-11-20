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
//   7.7 Arrays as arguments to subroutines

// ! TYPE: POSITIVE

module top;

  task fun(int a[3:1][3:1]);
  endtask

  int b1[3:1][3:1];
  int b2[1:3][0:2];
  logic b3[3:1][3:1];
  event b4[3:1][3:1];
  int b5[3:1];
  int b6[3:1][4:1];

  initial begin
    fun(b1); // OK: same type, dimension, and size
    fun(b2); // OK: same type, dimension, & size (different ranges)
`ifdef NEGATIVE_TEST
    fun(b3); // error: incompatible element type
    fun(b4); // error: incompatible type
    fun(b5); // error: incompatible number of dimensions
    fun(b6); // error: incompatible size (3 vs. 4)
`endif
  end

endmodule
