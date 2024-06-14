/*
 * Copyright 2018-2024 ISP RAS (http://www.ispras.ru)
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
//       10.4.3 Calling a function
//         The following example creates a word by concatenating the results of two calls
//         to the function getbyte.

module test(control);

  input control;
  reg [15:0] msbyte, lsbyte;
  reg [30:0] word;

  function [7:0] getbyte (input [15:0] address);
    begin
      // code to extract low-order byte from addressed word

      getbyte = 0; // set 0 for simplicity
    end
  endfunction

  initial begin
    word = control ? {getbyte(msbyte), getbyte(lsbyte)}:0;
  end
endmodule
