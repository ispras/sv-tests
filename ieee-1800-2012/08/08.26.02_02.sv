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
//     8.26.2 Extends versus implements

// ! TYPE: POSITIVE

module top;

  interface class IntfClass;
    pure virtual function bit funcBase();
    pure virtual function bit funcExt();
  endclass

  class BaseClass;
    virtual function bit funcBase();
      return (1);
    endfunction
  endclass

  class ExtClass extends BaseClass implements IntfClass;
    virtual function bit funcExt();
      return (0);
    endfunction
  endclass

endmodule
