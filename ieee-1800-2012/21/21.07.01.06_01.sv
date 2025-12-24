// IEEE Std 1800-2012
//   21. Input/output system tasks and system functions
//    21.7 Value change dump (VCD) files
//     21.7.1 Creating 4-state VCD file
//      21.7.1.6 Reading dump file during simulation ($dumpflush)

// ! TYPE: POSITIVE

module top(input clock);

  event do_dump;
  initial $dumpfile("verilog.dump");
  initial @do_dump $dumpvars; // dump variables in the design
  always @do_dump // to begin the dump at event 'do_dump'
    begin
      $dumpon; // no effect the first time through
      repeat (500) @(posedge clock); // dump for 500 cycles
      $dumpoff; // stop the dump
    end
  initial @(do_dump)
    forever #10000 $dumpall; // checkpoint all variables

endmodule
