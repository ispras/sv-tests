// IEEE Std 1800-2012
//   6. Data types
//    6.17 Event data type

// ! TYPE: POSITIVE

module top;
  event done; // declare a new event called 'done'
  event done_too = done; // declare 'done_too' as alias to 'done'
  event empty = null; // event variable with no synchronization object
endmodule
