/*
 * Copyright 2018 ISP RAS (http://www.ispras.ru)
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

// IEEE Std 1364-2005
//   10. Tasks and functions
//     10.4 Functions and function calling
//       10.4.4 Function rules
//         This example defines a function called factorial that returns an integer value.
//         The factorial function is called iteratively and the results are printed.

// ! TYPE: POSITIVE

module tryfact;
  // define the function
  function automatic integer factorial;
    input [31:0] operand;
    integer i;
    if (operand >= 2)
      factorial = factorial (operand - 1) * operand;
    else
      factorial = 1;
  endfunction

  // test the function
  integer result;
  integer n;
  initial begin
    for (n = 0; n <= 7; n = n+1) begin
      result = factorial(n);
      $display ("%0d factorial=%0d", n, result);
    end
  end
endmodule // tryfact
