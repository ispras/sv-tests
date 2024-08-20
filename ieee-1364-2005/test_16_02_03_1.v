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
//   16. Backannotation using the standard delay format (SDF)
//     16.2 Mapping of SDF constructs to Verilog
//       16.2.3 SDF annotation of specparams

module clock(clk);

  output clk;
  reg clk;
  specparam dhigh = 0, dlow = 0;

  initial clk = 0;

  always
    begin
      #dhigh clk = 1; // Clock remains low for time dlow
                      // before transitioning to 1
      #dlow  clk = 0; // Clock remains high for time dhigh
                      // before transitioning to 0
    end // BUG: ;
endmodule
