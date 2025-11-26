// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.10 Queues
//    7.10.2 Queue methods

// ! TYPE: POSITIVE

module top;

  typedef int element_t;
  typedef element_t queue_t[$];
  element_t e;
  queue_t Q;
  initial begin
    for ( int j = 0; j < Q.size; j++ ) $warning( Q[j] );
  end

endmodule
