// IEEE Std 1800-2012
//   9. Processes
//    9.3 Block statements
//     9.3.3 Statement block start and finish times

// ! TYPE: POSITIVE

module top(input clock1, clock2);

  reg areg, breg;

  initial begin
    fork
      @(posedge clock1);;
      @(posedge clock2);;
    join
    areg = breg;
  end

endmodule
