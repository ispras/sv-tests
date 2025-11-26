// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.8 Block statements
//       9.8.4 Start and finish times
//         This example shows two sequential blocks, each of which will execute when its controlling
//         event occurs. Because the event controls are within a fork-join block, they execute in
//         parallel, and the sequential blocks can, therefore, also execute in parallel.

// ! TYPE: POSITIVE

module test;

  event enable_a, enable_b;
  parameter ta = 1, tb = 1;
  reg wa, wb;

  initial begin
    fork
      @enable_a
      begin
        #ta wa = 0;
        #ta wa = 1;
        #ta wa = 0;
      end
      @enable_b
      begin
        #tb wb = 1;
        #tb wb = 0;
        #tb wb = 1;
      end
    join
  end
endmodule
