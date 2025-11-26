// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.5 Dynamic arrays
//    7.5.3 Delete()

// ! TYPE: POSITIVE

module top;

  parameter int N = 100;

  initial begin
    int ab [] = new[N]; // create a temporary array of size 'N'
    // use 'ab'
    ab.delete; // delete the array contents
    $warning("%d", ab.size); // prints 0
  end

endmodule
