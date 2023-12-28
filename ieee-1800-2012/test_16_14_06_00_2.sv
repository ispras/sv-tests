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

module test;

reg q, q1, d, d1;
reg mclk;

property r4;
  q != d;
endproperty

always @(posedge mclk) begin
  #10 q <= d1; // delay prevents clock inference
  @(negedge mclk) // event control prevents clock inference
  #10 q1 <= !d1;
  r4_p: assert property (r4); // no inferred clock
end

endmodule
