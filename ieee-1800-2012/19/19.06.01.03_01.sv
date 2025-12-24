// IEEE Std 1800-2012
//   19. Functional coverage
//    19.6 Defining cross coverage
//     19.6.1 Defining cross coverage bins
//      19.6.1.3 Cross bin automatically defined types

// ! TYPE: POSITIVE

module top;

  covergroup cg (ref logic [0:3] x, ref logic [0:7] y, ref logic [0:2] a);
    xy: coverpoint {x, y};
    coverpoint y;
    XYA: cross xy, a
    {
      // the cross types are as if defined here as follows:
      // typedef struct {logic [11:0] xy; logic [0:2] a;} CrossValType;
      // typedef CrossValType CrossQueueType[$];
    }
  endgroup

endmodule
