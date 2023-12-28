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
//     9.1 Behavioral model overview
//       The following example shows a complete Verilog behavioral model.

module behave;
  reg [1:0] a, b;
  initial begin
    a = 'b1;
    b = 'b0;
  end
  always begin
    #50 a = ~a;
  end
  always begin
    #100 b = ~b;
  end
endmodule
