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
//   3. Lexical conventions
//    3.7 Identifiers
//      3.7.1 Escaped identifiers

// ! TYPE: POSITIVE

module test;
  reg \busa+index /* There should be space */;
  reg \-clock ;
  reg \***error-condition*** ;
  reg \net1/\net2 ;
  reg \{a,b} ;
  reg \a*(b+c) ;
endmodule
