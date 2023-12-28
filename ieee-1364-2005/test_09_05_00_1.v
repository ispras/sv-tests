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
//       A simple example of the use of the case statement is the decoding of reg rega to produce
//       a value for result as follows.

module test;
  reg [15:0] rega;
  reg [9:0] result;

  initial begin
    case (rega)
      16'd0: result = 10'b0111111111;
      16'd1: result = 10'b1011111111;
      16'd2: result = 10'b1101111111;
      16'd3: result = 10'b1110111111;
      16'd4: result = 10'b1111011111;
      16'd5: result = 10'b1111101111;
      16'd6: result = 10'b1111110111;
      16'd7: result = 10'b1111111011;
      16'd8: result = 10'b1111111101;
      16'd9: result = 10'b1111111110;
      default result = 'bx;
    endcase
  end
endmodule
