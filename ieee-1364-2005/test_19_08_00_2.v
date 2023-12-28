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
//       The time values in the modules that follow this directive are multiples of 10 us because
//       the time_unit argument is “10  us.” Delays are rounded to within one tenth of a
//       microsecond because the time_precision argument is “100 ns,” or one tenth of a microsecond.

`timescale 10 us / 100 ns

module test;
  initial begin
  end
endmodule