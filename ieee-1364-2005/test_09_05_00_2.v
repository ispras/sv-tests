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
//   9. Behavioral modeling
//     9.5 Case statement
//       The following example illustrates the use of a case statement to handle x
//       and z values properly. In this example, if select[1] is 0 and flaga is 0, then even if
//       the value of select[2] is x or z, result should be 0—which is resolved by the third case.

module test;
  input [1:3] select;
  reg flaga, flagb;
  reg result;

  initial begin
    case (select[1:2])
      2'b00: result = 0;
      2'b01: result = flaga;
      2'b0x,
      2'b0z: result = flaga ? 'bx : 0;
      2'b10: result = flagb;
      2'bx0,
      2'bz0: result = flagb ? 'bx : 0;
      default result = 'bx;
    endcase
  end
endmodule
