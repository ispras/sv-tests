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
//    8.20 Virtual methods

// ! TYPE: POSITIVE

module top;

  class BasePacket;
    int A = 1;
    int B = 2;
    function void printA;
      $display("BasePacket::A is %d", A);
    endfunction : printA

    virtual function void printB;
      $display("BasePacket::B is %d", B);
    endfunction : printB
  endclass : BasePacket

  class My_Packet extends BasePacket;
    int A = 3;
    int B = 4;
    function void printA;
      $display("My_Packet::A is %d", A);
    endfunction: printA

    virtual function void printB;
      $display("My_Packet::B is %d", B);
    endfunction : printB
  endclass : My_Packet

  BasePacket P1 = new;
  My_Packet P2 = new;
  initial begin
    P1.printA; // displays 'BasePacket::A is 1'
    P1.printB; // displays 'BasePacket::B is 2'
    P1 = P2; // 'P1' has a handle to a 'My_packet' object
    P1.printA; // displays 'BasePacket::A is 1'
    P1.printB; // displays 'My_Packet::B is 4' – latest derived method
    P2.printA; // displays 'My_Packet::A is 3'
    P2.printB; // displays 'My_Packet::B is 4'
  end

endmodule
