// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.4 Packed and unpacked arrays
//    7.4.5 Multidimensional arrays

// ! TYPE: POSITIVE

module top;

  // Multiple packed dimensions can also be defined in stages with 'typedef'.
  typedef bit [1:5] bsix;
  bsix [1:10] v5; // 1 to 5 varies most rapidly

  // Multiple unpacked dimensions can also be defined in stages with 'typedef'.
  typedef bsix mem_type [0:3]; // array of four 'bsix' elements
  mem_type ba [0:7]; // array of eight 'mem_type' elements

endmodule
