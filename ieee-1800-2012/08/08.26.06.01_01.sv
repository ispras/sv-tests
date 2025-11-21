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
//     8.26.6 Name conflicts and resolution
//      8.26.6.1 Method name conflict resolution

// ! TYPE: POSITIVE

module top;

  interface class IntfBase1;
    pure virtual function bit funcBase();
  endclass

  interface class IntfBase2;
    pure virtual function bit funcBase();
  endclass

  virtual class ClassBase;
    pure virtual function bit funcBase();
  endclass

  class ClassExt extends ClassBase implements IntfBase1, IntfBase2;
    virtual function bit funcBase();
      return (0);
    endfunction
  endclass

endmodule
