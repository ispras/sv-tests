// IEEE Std 1800-2012
//   16. Assertions
//    16.12 Declaring properties
//     16.12.9 Followed-by property

// ! TYPE: POSITIVE

module top(input done, rst);

  property p1;
    ##[0:5] done #-# always !rst;
  endproperty

  property p2;
    ##[0:5] done #=# always !rst;
  endproperty

endmodule

