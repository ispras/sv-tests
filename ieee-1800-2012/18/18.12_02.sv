// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.12 Randomization of scope variables—std::randomize()

// ! TYPE: POSITIVE

module top;

  class stimc;
    rand bit [15:0] addr;
    rand bit [31:0] data;
    rand bit rd_wr;
  endclass

  function bit gen_stim(stimc p);
    bit [15:0] addr;
    bit [31:0] data;
    bit success;
    success = p.randomize();
    addr = p.addr;
    data = p.data;
    return p.rd_wr;
  endfunction

endmodule
