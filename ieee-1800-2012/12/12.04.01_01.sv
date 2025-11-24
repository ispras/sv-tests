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
//    12.4 Conditional if–else statement
//     12.4.1 if–else–if construct

// ! TYPE: POSITIVE

module top;

  // declare variables and parameters
  logic [31:0] instruction, segment_area[255:0];
  logic [7:0] index;
  logic [5:0] modify_seg1, modify_seg2, modify_seg3;
  parameter
      segment1 = 0, inc_seg1 = 1,
      segment2 = 20, inc_seg2 = 2,
      segment3 = 64, inc_seg3 = 4,
      data = 128;

  initial begin
    // test the index variable
    if (index < segment2) begin
      instruction = segment_area [index + modify_seg1];
      index = index + inc_seg1;
    end
    else if (index < segment3) begin
      instruction = segment_area [index + modify_seg2];
      index = index + inc_seg2;
    end
    else if (index < data) begin
      instruction = segment_area [index + modify_seg3];
      index = index + inc_seg3;
    end
    else
      instruction = segment_area [index];
  end

endmodule
