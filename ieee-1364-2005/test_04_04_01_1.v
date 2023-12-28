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
//    4.4 Strengths
//      4.4.1 Charge strength
module test;
  trireg a;                        // trireg net of charge strength medium
  trireg (large) #(0,0,50) cap1;   // trireg net of charge strength large
                                   // with charge decay time 50 time units
  trireg (small)signed [3:0] cap2; // signed 4-bit trireg vector
endmodule
