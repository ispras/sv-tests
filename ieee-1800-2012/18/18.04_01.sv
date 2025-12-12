// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.4 Random variables

// ! TYPE: POSITIVE

module top;

  parameter constant = 1;

  class packet;
    typedef struct {
      randc int addr = 1 + constant;
      int crc;
      rand byte data [] = {1, 2, 3, 4};
    } header;
    rand header h1;
  endclass

  packet p1 = new;

endmodule
