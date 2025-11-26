// IEEE Std 1800-2012
//   9. Processes
//    9.6 Process control
//     9.6.2 Disable statement

// ! TYPE: POSITIVE

module top(input a);

  task proc_a;
    begin
      if (a == 0)
        disable proc_a; // return if true
    end
  endtask

endmodule
