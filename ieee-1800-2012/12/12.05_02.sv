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
//    12.5 Case statement

// ! TYPE: POSITIVE

module top;

  logic [0:2] select;
  logic [9:0] result, flaga, flagb;

  initial begin
    case (select[1:2])
      2'b00: result = 0;
      2'b01: result = flaga;
      2'b0x,
      2'b0z: result = flaga ? 'x : 0;
      2'b10: result = flagb;
      2'bx0,
      2'bz0: result = flagb ? 'x : 0;
      default result = 'x;
    endcase
  end

endmodule
