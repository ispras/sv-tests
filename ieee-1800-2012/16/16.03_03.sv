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
//   16. Assertions
//    16.3 Immediate assertions

// ! TYPE: POSITIVE

module top(input a, b, y);

  reg [2:0] count;
  reg [2:0] count1;
  reg flag;

  event event1;

  function bit myfunc(bit x, y);
    return x && y;
  endfunction

  always_comb begin
    assert (myfunc(a,b)) count1 = count + 1; else ->event1;
    assert (y == 0) else flag = 1;
  end

endmodule
