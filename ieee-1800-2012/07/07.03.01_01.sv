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
//   7.3 Unions
//    7.3.1 Packed unions

// ! TYPE: POSITIVE

module top;

  typedef struct packed {
    logic [39:0] header;
    logic [383:0] payload;
  } s_atmcell;

  typedef union packed { // default 'unsigned'
    s_atmcell acell;
    bit [423:0] bit_slice;
    bit [52:0][7:0] byte_slice;
  } u_atmcell;

  u_atmcell u1;
  byte b; bit [3:0] nib;

  initial begin
    b = u1.bit_slice[415:408]; // same as 'b = u1.byte_slice[51]';
    nib = u1.bit_slice [423:420]; // same as 'nib = u1.acell.GFC';
  end

endmodule
