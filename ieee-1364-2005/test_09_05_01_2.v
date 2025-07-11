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
//       9.5.1 Case statement with do-not-cares
//         The following is an example of the casex statement. It demonstrates an extreme case of
//         how do-not-care conditions can be dynamically controlled during simulation. In this case,
//         if r = 8'b01100110, then the task stat2 is called.

// ! TYPE: POSITIVE

module test;

  reg [7:0] r, mask;

  task stat1;
  begin
  end
  endtask

  task stat2;
  begin
  end
  endtask

  task stat3;
  begin
  end
  endtask

  task stat4;
  begin
  end
  endtask

  initial begin
    mask = 8'bx0x0x0x0;
    casex (r ^ mask)
      8'b001100xx: stat1;
      8'b1100xx00: stat2;
      8'b00xx0011: stat3;
      8'bxx010100: stat4;
    endcase
  end
endmodule
