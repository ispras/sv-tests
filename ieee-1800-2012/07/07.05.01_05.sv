// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.5 Dynamic arrays
//    7.5.1 New[ ]

// ! TYPE: POSITIVE

module top;

  integer addr[];// Declare the dynamic array.

  initial begin
    addr = new[100]; // Create a 100-element array.

    // Double the array size, preserving previous values.
    // Preexisting references to elements of 'addr' are outdated.
    addr = new[200](addr);
  end

endmodule
