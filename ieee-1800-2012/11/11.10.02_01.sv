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
//   11. Operators and expressions
//    11.10 String literal expressions
//     11.10.2 String literal value padding and potential problems

// ! TYPE: POSITIVE

module top;

  bit [8*10:1] s1, s2;

  initial begin
    s1 = "Hello";
    s2 = " world!";

    if ({s1, s2} == "Hello world!")
      $display("strings are equal");
  end

endmodule
