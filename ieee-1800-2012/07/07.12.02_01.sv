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
//  7. Aggregate data types
//   7.12 Array manipulation methods
//    7.12.2 Array ordering methods

// ! TYPE: POSITIVE

module top;

  string s[] = { "hello", "sad", "world" };
  int q[$] = { 4, 5, 3, 1 };
  struct { byte red, green, blue; } c [512];

  initial begin
    s.reverse(); // 's' becomes { "world", "sad", "hello" };

    q.sort(); // 'q' becomes { 1, 3, 4, 5 }

    c.sort() with ( item.red ); // sort 'c' using the 'red' field only
    c.sort() with ( {item.blue, item.green} ); // sort by 'blue' then 'green'
  end

endmodule
