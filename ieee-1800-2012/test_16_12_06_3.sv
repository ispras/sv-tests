/*
 * Copyright 2019 ISP RAS (http://www.ispras.ru)
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
//   16. Assertions
//    16.12 Declaring properties
//     16.12.6 Implication

// ! TYPE: POSITIVE

module test(write_en, data_valid);

input write_en;
output data_valid;
reg [0:4] addr;
reg [0:8] retire_address, write_address;

property p16;
  (write_en & data_valid) ##0
    (write_en && (retire_address[0:4]==addr)) [*2] |->
      ##[3:8] write_en && !data_valid &&(write_address[0:4]==addr);
endproperty

property p16_nested;
  (write_en & data_valid) |->
    (write_en && (retire_address[0:4]==addr)) [*2] |->
      ##[3:8] write_en && !data_valid && (write_address[0:4]==addr);
endproperty

endmodule
