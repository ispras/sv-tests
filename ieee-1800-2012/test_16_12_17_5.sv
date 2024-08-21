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
//     16.12.17 Recursive properties

module test(reset, write_request, retry, write_request_ack, data_valid, last_data_valid);

input reset, write_request, retry;
output write_request_ack, retry, data_valid, last_data_valid;
reg [0:127] model_data, data;
reg [3:0] write_request_ack_tag, data_valid_tag, retry_tag;

property check_write;
  logic [0:127] expected_data; // local variable to sample model data
  logic [3:0] tag; // local variable to sample tag
  disable iff (reset)
  (
    write_request && write_request_ack,
    expected_data = model_data,
    tag = write_request_ack_tag
  )
  |=>
  check_write_data_beat(expected_data, tag, 4'h0);
endproperty

property check_write_data_beat
(
  local input logic [0:127] expected_data,
  local input logic [3:0] tag, i
 );
  (
    (data_valid && (data_valid_tag == tag))
    ||
    (retry && (retry_tag == tag))
  )[->1]
  |->
  (
    (
      (data_valid && (data_valid_tag == tag))
      |->
      (data == expected_data[i*8+:8])
    )
    and
    (
      if (retry && (retry_tag == tag))
      (
        1'b1 |=> check_write_data_beat(expected_data, tag, 4'h0)
      )
      else if (!last_data_valid)
      (
        1'b1 |=> check_write_data_beat(expected_data, tag, i+4'h1)
      )
      else
      (
        ##1 (retry && (retry_tag == tag))
        |=>
        check_write_data_beat(expected_data, tag, 4'h0)
      )
    )
  );
endproperty

endmodule
