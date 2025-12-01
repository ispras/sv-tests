// IEEE Std 1800-2012
//   13. Tasks and functions (subroutines)
//    13.5 Subroutine calls and argument passing
//     13.5.2 Pass by reference

// ! TYPE: POSITIVE

module top;

  task automatic show (const ref byte data []);
    for (int j = 0; j < data.size ; j++)
      $display(data[j]); // 'data' can be read but not written
  endtask

endmodule
