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
//    4.10 Parameters
//      4.10.3 Specify parameters
//        Example 2

// ! TYPE: VARYING

module RAM16GEN(DOUT, DIN, ADR, WE, CE);

  output [7:0] DOUT;
  input [7:0] DIN;
  input [5:0] ADR;
  input WE, CE;

  specparam dhold = 1.0;
  specparam ddly = 1.0;
  parameter width = 1;

`ifdef NEGATIVE_TEST
  parameter regsize = dhold + 1.0; // Illegal - cannot assign
                                   // specparams to parameters
`endif
endmodule
