// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.11 In-line random variable control

// ! TYPE: POSITIVE

module top;

  class CA;
    rand byte x, y;
    byte v, w;
    constraint c1 {x < v && y > w;}
  endclass

  CA a = new;

  initial begin
    a.randomize(); // random variables: 'x', 'y'; state variables: 'v', 'w'
    a.randomize(x); // random variables: 'x'; state variables: 'y', 'v', 'w'
    a.randomize(v, w);  // random variables: 'v', 'w'; state variables: 'x', 'y'
    a.randomize(w, x); // random variables: 'w', 'x'; state variables: 'y', 'v'
  end

endmodule
