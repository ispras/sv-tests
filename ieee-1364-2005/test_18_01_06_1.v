// IEEE Std 1364-2005
//   18. Value change dump (VCD) files
//     18.1 Creating four-state VCD file
//       18.1.6 Reading dump file during simulation ($dumpflush)
//         Example 1 — This example shows how the $dumpflush task can be used in a Verilog HDL
//         source file.

// ! TYPE: POSITIVE

module test;
  initial begin
      $dumpvars;
      // ...
      $dumpflush;
      // $(applications program);
  end
endmodule
