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
//    8.13 Inheritance and subclasses

// ! TYPE: POSITIVE

module top;

  class Packet;
    integer addr;
    integer data;

    function new(integer addr, integer data);
      this.addr = addr;
      this.data = data;
    endfunction
  endclass

  class LinkedPacket_Composition;
    Packet packet_c;
    LinkedPacket_Composition next;

    function new(integer addr, integer data);
      packet_c = new(addr, data);
    endfunction

    function LinkedPacket_Composition get_next();
      return next;
    endfunction
  endclass

  class LinkedPacket_Inheritance extends Packet;
    LinkedPacket_Inheritance next;

    function new(integer addr, integer data);
      super.new(addr, data);
    endfunction

    function LinkedPacket_Inheritance get_next();
      return next;
    endfunction
  endclass

endmodule
