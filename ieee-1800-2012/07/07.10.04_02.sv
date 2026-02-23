// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.10 Queues
//    7.10.4 Updating a queue using assignment and unpacked array concatenation

// ! TYPE: POSITIVE

module top;

  int q[$] = {2, 4, 8};

  initial begin
    q = q[2:$]; // a new queue lacking the first two items
    q = q[1:$ - 1]; // a new queue lacking the first and last items
  end

endmodule
