// IEEE Std 1800-2012
//   13. Tasks and functions (subroutines)
//    13.5 Subroutine calls and argument passing
//     13.5.3 Default argument values

// ! TYPE: VARYING

module top;

  task read(int j = 0, int k, int data = 1);
  endtask

  initial begin
    read(, 5); // is equivalent to 'read(0, 5, 1);'
    read(2, 5); // is equivalent to 'read(2, 5, 1);'
    read(, 5,); // is equivalent to 'read(0, 5, 1);'
    read(, 5, 7); // is equivalent to 'read(0, 5, 7);'
    read(1, 5, 2); // is equivalent to 'read(1, 5, 2);'
`ifdef NEGATIVE_TEST
    read(); // error; 'k' has no default value
    read(1, , 7); // error; 'k' has no default value
`endif
  end

endmodule
