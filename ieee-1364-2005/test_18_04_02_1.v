// IEEE Std 1364-2005
//   18. Value change dump (VCD) files
//     18.4 Format of extended VCD file
//       18.4.2 Extended VCD node information

// ! TYPE: POSITIVE

module testbench;
  test_device DUT();
endmodule

module test_device(count_out, carry, data, reset);

  output count_out, carry;
  input [0:3] data;
  input reset;

  initial begin
    $dumpports(testbench.DUT, "testoutput.vcd");
    //  ...
  end
endmodule
