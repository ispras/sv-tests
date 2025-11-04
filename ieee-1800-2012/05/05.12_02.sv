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
//   5. Lexical conventions
//    5.12 Attributes

// ! TYPE: POSITIVE

module top;
  logic [1:0] a;
  logic [1:0] result1, result2;

  initial begin
    for (int i = 0; i < 4; i++) begin
      a = i;

      // Example 1: 'full_case' attribute attached, 'parallel_case' not specified
      (* full_case *) // 'parallel_case' not specified
      case (a)
        2'b00: result1 = 2'b01;
        2'b01: result1 = 2'b10;
        2'b10: result1 = 2'b11;
        2'b11: result1 = 2'b00;
      endcase

      // Example 2: full_case=1, parallel_case=0 (explicitly disabling 'parallel_case')
      (* full_case=1, parallel_case = 0 *)
      case (a)
        2'b00: result2 = 2'b11;
        2'b01: result2 = 2'b00;
        2'b10: result2 = 2'b01;
        2'b11: result2 = 2'b10;
      endcase
    end
  end
endmodule