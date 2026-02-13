// IEEE Std 1800-2012
//   35. Direct programming interface
//    35.5 Imported tasks and functions
//     35.5.4 Import declarations

// ! TYPE: POSITIVE

import "DPI-C" function void myInit();

// from standard math library
import "DPI-C" pure function real sin(real);

// from standard C library: memory management
import "DPI-C" function chandle malloc(int size); // standard C function
import "DPI-C" function void free(chandle ptr); // standard C function

// abstract data structure: queue
import "DPI-C" function chandle newQueue(input string name_of_queue);

// Note the following import uses the same foreign function for
// implementation as the prior import, but has different SystemVerilog name
// and provides a default value for the argument.
`ifdef NEGATIVE_TEST
import "DPI-C" newQueue=function chandle newAnonQueue(input string s =  null);
`endif
import "DPI-C" function chandle newElem(bit [15:0]);
import "DPI-C" function void enqueue(chandle queue, chandle elem);
import "DPI-C" function chandle dequeue(chandle queue);

// miscellanea
import "DPI-C" function shortint unsigned getStimulus();
import "DPI-C" context function void processTransaction(
  input chandle elem,
  output logic [64:1] arr [0:63]
);
import "DPI-C" task checkResults(input string s, bit [511:0] packet);

module top();
endmodule
