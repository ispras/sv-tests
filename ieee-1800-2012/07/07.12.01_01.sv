// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.12 Array manipulation methods
//    7.12.1 Array locator methods

// ! TYPE: VARYING

module top;

  string SA[10], qs[$];
  int IA[int], qi[$];

  initial begin
    // Find all items greater than 5
    qi = IA.find() with ( item > 5 );
`ifdef NEGATIVE_TEST
    qi = IA.find( x ); // shall be an error
`endif

    // Find indices of all items equal to '3'
    qi = IA.find_index() with ( item == 3 );

    // Find first item equal to 'Bob'
    qs = SA.find_first() with ( item == "Bob" );

    // Find last item equal to 'Henry'
    qs = SA.find_last() with ( item == "Henry" );

    // Find index of last item greater than 'Z'
    qi = SA.find_last_index() with ( item > "Z" );

    // Find smallest item
    qi = IA.min();

    // Find string with largest numerical value
    qs = SA.max() with ( item.atoi );

    // Find all unique string elements
    qs = SA.unique();

    // Find all unique strings in lowercase
    qs = SA.unique() with ( item.tolower );
  end

endmodule
