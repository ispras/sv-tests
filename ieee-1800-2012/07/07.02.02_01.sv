// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.2 Structures
//    7.2.2 Assigning to structures

// ! TYPE: POSITIVE

module top;

  int constant = 0;

  typedef struct {
    int addr = 1 + constant;
    int crc;
    byte data [4] = '{4{1}};
  } packet1;

  packet1 p1; // initialization defined by the 'typedef'.
              // 'p1.crc' will use the default value for an 'int'

  packet1 pi = '{1, 2, '{2, 3, 4, 5}}; // suppresses the 'typedef' initialization

endmodule
