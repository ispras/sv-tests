// IEEE Std 1800-2012
//   9. Processes
//    9.2 Structured procedures
//     9.2.3 Final procedures

// ! TYPE: POSITIVE

module top;

  integer PC, period;

  final
    begin
      $display("Number of cycles executed %d", $time / period);
      $display("Final PC = %h", PC);
    end

endmodule
