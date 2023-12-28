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
//     9.8 Block statements
//       9.8.2 Parallel blocks
//         The following example codes the waveform description shown in Example 3 of 9.8.1 by using
//         a parallel block instead of a sequential block. The waveform produced on the reg is
//         exactly the same for both implementations.

module test;
  event end_wave;
  parameter d = 50;   // d declared as a parameter and
  reg [7:0] r;        // r declared as an 8-bit reg

  initial begin  // a waveform controlled by sequential delay
    fork
      #50 r = 'h35;
      #100 r = 'hE2;
      #150 r = 'h00;
      #200 r = 'hF7;
      #250 -> end_wave;
    join
  end
endmodule
