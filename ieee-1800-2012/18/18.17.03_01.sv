// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.17 Random sequence generation—randsequence
//     18.17.3 Case production statements

// ! TYPE: POSITIVE

module top;

  int device;

  parameter network = 0;
  parameter disk = 1;
  parameter memory = 2;

  integer stamp;

  initial randsequence()
    SELECT : case (device & 7)
      0 : NETWORK;
      1, 2 : DISK;
      default : MEMORY;
    endcase ;

    NETWORK: {stamp = network;};
    DISK: {stamp = disk;};
    MEMORY: {stamp = memory;};
  endsequence

endmodule
