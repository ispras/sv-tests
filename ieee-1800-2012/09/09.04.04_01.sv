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
//    9.4 Procedural timing controls
//     9.4.4 Level-sensitive sequence controls

// ! TYPE: POSITIVE

module top(input clk);

  reg a, b, c, d, e;

  sequence abc;
    @(posedge clk) a ##1 b ##1 c;
  endsequence

  sequence de;
    @(negedge clk) d ##[2:5] e;
  endsequence

  program check;
    initial begin
      wait( abc.triggered || de.triggered );
      if( abc.triggered )
        $display( "abc succeeded" );
      if( de.triggered )
        $display( "de succeeded" );
      L2: $display( "L2" );
    end
  endprogram

endmodule
