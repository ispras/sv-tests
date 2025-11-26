// IEEE Std 1800-2012
//   9. Processes
//    9.3 Block statements
//     9.3.3 Statement block start and finish times

// ! TYPE: POSITIVE

module top(input clock1, clock2);

  parameter ta = 10;
  parameter tb = 10;
  logic wa, wb;

  initial fork
    @(posedge clock1)
      begin
        #ta wa = 0;
        #ta wa = 1;
        #ta wa = 0;
      end

    @(posedge clock2)
      begin
        #tb wb = 1;
        #tb wb = 0;
        #tb wb = 1;
      end
    join

endmodule
