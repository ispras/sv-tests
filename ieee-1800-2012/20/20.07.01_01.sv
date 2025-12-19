// IEEE Std 1800-2012
//   20. Utility system tasks and system functions
//    20.7 Array querying functions
//     20.7.1 Queries over multiple variable dimensions

// ! TYPE: VARYING

module top;

  int a[3][][5]; // array dimension 2 has variable size

  initial begin
    $display($unpacked_dimensions(a)); // displays '3'
    a[2] = new[4];
    a[2][2][0] = 220; // OK, 'a[2][2]' is a 5-element array
    $display($size(a, 1)); // OK, displays '3'
`ifdef NEGATIVE_TEST
    $display($size(a, 2)); // ERROR, dimension 2 is dynamic
`endif
    $display($size(a[2], 1)); // OK, displays '4' ('a[2]' is
                              // a 4-element dynamic array)
    $display($size(a[1], 1)); // OK, displays '0' ('a[1]' is
                              // an empty dynamic array)
    $display($size(a, 3)); // OK, displays '5' (fixed-size dimension)
  end

endmodule
