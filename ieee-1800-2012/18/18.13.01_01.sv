// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.13 Random number system functions and methods
//     18.13.1 $urandom

// ! TYPE: POSITIVE

module top;

  bit [64:1] addr;
  bit [ 3:0] number;
  initial begin
    addr[32:1] = $urandom(254); // Initialize the generator,
                                // get 32-bit random number
    addr = {$urandom, $urandom}; // 64-bit random number
    number = $urandom & 15; // 4-bit random number
  end

endmodule
