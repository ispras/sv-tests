// IEEE Std 1800-2012
//   9. Processes
//    9.3 Block statements
//     9.3.1 Sequential blocks

// ! TYPE: POSITIVE

module top;

  reg areg, breg, creg;

  initial begin
    begin
      areg = breg;
      creg = areg; // 'creg' stores the value of 'breg'
    end
  end

endmodule
