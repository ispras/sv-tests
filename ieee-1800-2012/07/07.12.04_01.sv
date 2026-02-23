// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.12 Array manipulation methods
//    7.12.3 Array reduction methods

// ! TYPE: POSITIVE

module top;

  int arr[];
  int q[$];

  initial begin
    // find all items equal to their position ('index)
    q = arr.find with (item == item.index);
  end

endmodule
