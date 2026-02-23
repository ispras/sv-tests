// IEEE Std 1800-2012
//   9. Processes
//    9.6 Process control
//     9.6.3 Disable fork statement

// ! TYPE: POSITIVE

module top(output int adr_top);

  task wait_device(input a, adr);
  endtask

  task get_first(output int adr);
    fork
      wait_device(1, adr);
      wait_device(7, adr);
      wait_device(13, adr);
    join_any
    disable fork;
  endtask

  initial begin
    get_first(adr_top);
  end

endmodule
