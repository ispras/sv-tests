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
//   12. Procedural programming statements
//    12.6 Pattern matching conditional statements
//     12.6.1 Pattern matching in case statements

// ! TYPE: POSITIVE

module top;

  typedef union tagged {
    void Invalid;
    int Valid;
  } VInt;

  VInt v;

  initial begin
    case (v) matches
      tagged Invalid : $display ("v is Invalid");
      tagged Valid .n : $display ("v is Valid with value %d", n);
    endcase
  end

endmodule
