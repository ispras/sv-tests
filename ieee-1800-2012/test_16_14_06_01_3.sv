/*
 * Copyright 2019 ISP RAS (http://www.ispras.ru)
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
//    16.14 Concurrent assertions
//     16.14.6 Embedding concurrent assertions in procedural code
//      16.14.6.1 Arguments to procedural concurrent assertions

module test(clk);

input clk;
wire w;
reg [10:0] foo;
reg [10:0] bar;
reg my_activation_condition;

always @(posedge clk) begin : procedural_block_1
  integer i;
  if (my_activation_condition == 1) begin
    for (i=0; i<2; i=i+1) begin
      a7: assume property (foo[i] |=> bar[i] ##1 (w==1'b1));
    end
  end
end

endmodule
