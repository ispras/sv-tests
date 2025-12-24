// IEEE Std 1800-2012
//   21. Input/output system tasks and system functions
//    21.7 Value change dump (VCD) files
//     21.7.4 Format of extended VCD file
//      21.7.4.2 Extended VCD node information

// ! TYPE: POSITIVE

module top(count_out, carry, data, reset);

  output count_out, carry;
  input [0:3] data;
  input reset;

  initial
    begin
      $dumpports(top, "testoutput.vcd");
    end

endmodule
