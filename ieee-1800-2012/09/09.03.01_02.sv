// IEEE Std 1800-2012
//   9. Processes
//    9.3 Block statements
//     9.3.1 Sequential blocks

// ! TYPE: POSITIVE

module top(input clock);

  reg areg, breg, creg;

  initial begin
    begin
      areg = breg;
      @(posedge clock) creg = areg; // assignment delayed until
                                    // posedge on 'clock'
    end
  end

endmodule
