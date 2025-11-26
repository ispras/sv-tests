// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.7 Arrays as arguments to subroutines

// ! TYPE: POSITIVE

module top;

  task t( string arr[4:1] );
  endtask

  string b1[4:1] = {"a", "b", "c", "d"};
  string b2[5:2] = {"a", "b", "c", "d"};
  string b3[] = new[4] ('{"a", "b", "c", "d"});

  initial begin
    t(b1); // OK: same type and size
    t(b2); // OK: same type and size (different range)
    t(b3); // OK: same type, number of dimensions, and
           // dimension size; requires run-time check
  end

endmodule
