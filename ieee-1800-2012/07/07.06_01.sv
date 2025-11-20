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

  int A[10:1]; // fixed-size array of 10 elements
  int B[0:9]; // fixed-size array of 10 elements
  int C[24:1]; // fixed-size array of 24 elements

  initial begin
    A = B; // ok. Compatible type and same size

`ifdef NEGATIVE_TEST
    A = C; // type check error: different sizes
`endif
  end

endmodule
