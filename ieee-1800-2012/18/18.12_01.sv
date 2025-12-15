// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.12 Randomization of scope variables—std::randomize()

// ! TYPE: POSITIVE

module top;

  bit [15:0] addr;
  bit [31:0] data;

  function bit gen_stim();
    bit success, rd_wr;
    success = randomize(addr, data, rd_wr); // call 'std::randomize'
    return rd_wr;
  endfunction

endmodule
