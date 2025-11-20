/*
 * Copyright 2025 ISP RAS (http://www.ispras.ru)
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
//   9. Processes
//    9.3 Block statements
//     9.3.1 Sequential blocks

// ! TYPE: POSITIVE

module top;

  parameter d = 50; // 'd' declared as a parameter and
  logic [7:0] r; // 'r' declared as an 8-bit variable

  initial begin
    begin // a waveform controlled by sequential delays
      #d r = 'h35;
      #d r = 'hE2;
      #d r = 'h00;
      #d r = 'hF7;
    end
  end

endmodule
