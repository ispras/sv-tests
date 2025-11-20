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
//  7. Aggregate data types
//   7.9 Associative array methods
//    7.9.1 Num() and size()

// ! TYPE: POSITIVE

module top;

  int imem[int];

  initial begin
    imem[ 2'b11 ] = 1;
    imem[ 16'hffff ] = 2;
    imem[ 4'b1000 ] = 3;
    $display( "%0d entries\n", imem.num ); // prints "3 entries"
  end

endmodule
