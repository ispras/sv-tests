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
//   8. Classes
//    8.2 Overview

// ! TYPE: POSITIVE

module top;

  class Packet ;
    // data or class properties
    bit [3:0] command;
    bit [40:0] address;
    bit [4:0] master_id;
    integer time_requested;
    integer time_issued;
    integer status;

    typedef enum { ERR_OVERFLOW= 10, ERR_UNDERFLOW = 1123 } PCKT_TYPE;

    const integer buffer_size = 100;
    const integer header_size;

    // initialization
    function new();
      command = 4'd0;
      address = 41'b0;
      master_id = 5'bx;
      header_size = 10;
    endfunction

    // methods
    // public access entry points
    task clean();
      command = 0; address = 0; master_id = 5'bx;
    endtask

    task issue_request( int delay );
      // send request to bus
    endtask

    function integer current_status();
      current_status = status;
    endfunction
  endclass

endmodule
