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
//       9.8.4 Start and finish times
//         The following example shows the statements from the example in 9.8.2 written in the
//         reverse order and still producing the same waveform.

module test;

  event end_wave;
  reg [7:0] r;

  initial begin
    fork
      #250 -> end_wave;
      #200 r = 'hF7;
      #150 r = 'h00;
      #100 r = 'hE2;
      #50 r = 'h35;
    join
  end
endmodule
