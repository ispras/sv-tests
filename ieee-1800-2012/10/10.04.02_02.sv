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
//    10.4 Procedural assignments
//     10.4.2 Nonblocking procedural assignments

// ! TYPE: POSITIVE

module top;
  logic a, b, c, d, e, f;

  // blocking assignments
  initial begin
    a = #10 1; // 'a' will be assigned 1 at time 10
    b = #2 0; // 'b' will be assigned 0 at time 12
    c = #4 1; // 'c' will be assigned 1 at time 16
  end

  // nonblocking assignments
  initial begin
    d <= #10 1; // 'd' will be assigned 1 at time 10
    e <= #2 0; // 'e' will be assigned 0 at time 2
    f <= #4 1; // 'f' will be assigned 1 at time 4
  end
endmodule
