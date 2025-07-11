/*
 * Copyright 2018 ISP RAS (http://www.ispras.ru)
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

// IEEE Std 1364-2005
//   10. Tasks and functions
//     10.1 Distinctions between tasks and functions
//       Either a task or a function can be defined to switch bytes in a 16-bit word. The task would
//       return the switched word in an output argument; therefore, the source code to enable a task
//       called switch_bytes could look like the following example. The task switch_bytes would take
//       the bytes in old_word, reverse their order, and place the reversed bytes in new_word.

// ! TYPE: POSITIVE

module test;

  reg old_word, new_word;

  task switch_bytes;
    input old_word;
    output new_word;
    begin
      new_word = old_word; // just a code for simplicity
    end
  endtask

  initial begin
    switch_bytes(old_word, new_word);
  end
endmodule
