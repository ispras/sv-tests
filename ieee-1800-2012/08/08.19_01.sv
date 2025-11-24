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
//    8.19 Constant class properties

// ! TYPE: POSITIVE

module top;

  class Jumbo_Packet;
    const int max_size = 9 * 1024; // global constant
    byte payload [];
    function new( int size );
      payload = new[ size > max_size ? max_size : size ];
    endfunction
  endclass

  class Big_Packet;
    const int size; // instance constant
    byte payload [];
    function new();
      size = $urandom % 4096; // one assignment in new -> ok
      payload = new[ size ];
    endfunction
  endclass

endmodule
