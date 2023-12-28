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
//   12. Hierarchical structures
//     12.4 Generate constructs
//       12.4.1 Loop generate constructs
//         A parameterized gray-code–to–binary-code converter module using a loop to generate
//         continuous assignments.

module gray2bin1 (bin, gray);
  parameter SIZE = 8;
  // this module is parameterizable
  output [SIZE-1:0] bin;
  input [SIZE-1:0] gray;
  genvar i;
  generate
    for (i=0; i<SIZE; i=i+1) begin :bit_
      assign bin[i] = ^gray[SIZE-1:i];
      // i refers to the implicitly defined localparam whose
      // value in each instance of the generate block is
      // the value of the genvar when it was elaborated.
    end
  endgenerate
endmodule
