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
//    10.7 Assignment extension and truncation

// ! TYPE: POSITIVE

module top;

  logic [5:0] a;
  logic signed [4:0] b;

  initial begin
    a = 8'hff; // After the assignment, a = 6'h3f
    b = 8'hff; // After the assignment, b = 5'h1f
  end

endmodule
