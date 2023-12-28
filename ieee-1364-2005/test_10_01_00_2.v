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
//       A word-switching function would return the switched word as the return value of the
//       function. Thus, the function call for the function switch_bytes could look like the
//       following example.

module test;
  reg old_word, new_word;

  function switch_bytes;
    input old_word;
    begin
      switch_bytes = old_word; // for simplicity
    end
  endfunction

  initial begin
    new_word = switch_bytes (old_word);
  end
endmodule
