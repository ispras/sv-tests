// IEEE Std 1800-2012
//   9. Processes
//    9.6 Process control
//     9.6.2 Disable statement

// ! TYPE: POSITIVE

module top;

  event ev1, trig, reset;
  parameter d = 10;
  reg areg, breg;

  task action(input a, b);
  endtask

  initial begin
    fork
      begin : event_expr
        @ev1;
        repeat (3) @trig;
        #d action (areg, breg);
      end
      @reset disable event_expr;
    join
  end

endmodule
