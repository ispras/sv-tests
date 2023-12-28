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
//   19. Compiler directives
//     19.8 `timescale
//       Here, all time values in the modules that follow the directive are multiples of 1 ns
//       because the time_unit argument is “1 ns.” Delays are rounded to real numbers with three
//       decimal places—or precise to within one thousandth of a nanosecond—because the
//       time_precision argument is “1 ps,” or one thousandth of a nanosecond.

`timescale 1 ns / 1 ps

module test;
  initial begin
  end
endmodule