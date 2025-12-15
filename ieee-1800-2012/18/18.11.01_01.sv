// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.11 In-line random variable control
//     18.11.1 In-line constraint checker

// ! TYPE: POSITIVE

module top;

  class CA;
    rand byte x, y;
    byte v, w;
    constraint c1 {x < v && y > w;}
  endclass

  CA a = new;
  int success = a.randomize(null); // no random variables

endmodule
