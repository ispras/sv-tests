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
//   4. Data types
//     4.5 Implicit declarations
//       If an identifier appears on the left-hand side of a continuous assignment statement, and that identifier
//       has not been declared previously in the scope where the continuous assignment statement appears or
//       in any scope whose declarations can be directly referenced from the scope where the continuous
//       assignment statement appears (see 12.7), then an implicit scalar net of default net type shall be
//       assumed.

module test(clk, a, b, c);

  input wire clk;
  input wire [3:0] a;
  input wire [3:0] b;
  output reg [3:0] c;
  
  assign f = ^a; // f is implicitly declared using the default net type (1-bit wire)
  
  always @(posedge clk) begin
    if (f) 
      c = a % b;
    else
      c = 0;
  end
endmodule

