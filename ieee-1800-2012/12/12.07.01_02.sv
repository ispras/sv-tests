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
//   12. Procedural programming statements
//    12.7 Loop statements
//     12.7.1 The for-loop

// ! TYPE: POSITIVE

module top;

  logic [31:0] lookup_table [0:255];
  logic [31:0] small_table [0:15];

  initial begin
    begin
      automatic int i;
      for (int i = 0; i <= 255; i++)
        lookup_table[i] = i ^ (i << 1);
    end
  end

  initial begin
    begin: loop2
      automatic int i;
      for (int i = 15; i >= 0; i--)
        small_table[i] = i & 4'b1010;
    end
  end

endmodule
