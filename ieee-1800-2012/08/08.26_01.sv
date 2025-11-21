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
//    8.26 Interface classes

// ! TYPE: POSITIVE

module top;

  interface class PutImp #(type PUT_T = logic);
    pure virtual function void put(PUT_T a);
  endclass

  interface class GetImp #(type GET_T = logic);
    pure virtual function GET_T get();
  endclass

  class Fifo #(type T = logic, int DEPTH = 1) implements PutImp #(T), GetImp #(T);
    T myFifo [$ : DEPTH - 1];

    virtual function void put(T a);
      myFifo.push_back(a);
    endfunction

    virtual function T get();
      get = myFifo.pop_front();
    endfunction
  endclass

  class Stack #(type T = logic, int DEPTH = 1) implements PutImp#(T), GetImp#(T);
    T myFifo [$ : DEPTH - 1];

    virtual function void put(T a);
      myFifo.push_front(a);
    endfunction

    virtual function T get();
      get = myFifo.pop_front();
    endfunction
  endclass

endmodule
