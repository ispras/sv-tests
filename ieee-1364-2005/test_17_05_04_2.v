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
//   17. System tasks and functions
//     17.5 Programmable logic array (PLA) modeling system tasks
//       17.5.4 Logic array personality formats

module sync_array(a1,a2,a3,a4,a5,a6,a7,b1,b2,b3,clk);

  input a1, a2, a3, a4, a5, a6, a7, clk;
  output b1, b2, b3;
  reg [1:7] mem[1:3]; // memory declaration
  reg b1, b2, b3;

  initial begin
    // set up the personality
    $readmemb ("array.dat", mem);

    // set up a synchronous logic array to be evaluated
    // when a positive edge on the clock occurs
    forever @(posedge clk)
      $async$and$array (mem,{a1,a2,a3,a4,a5,a6,a7},{b1,b2,b3});
  end
endmodule