// IEEE Std 1364-2005
//   18. Value change dump (VCD) files
//     18.1 Creating four-state VCD file
//       18.1.2 Specifying variables to be dumped ($dumpvars)
//         Example 2 - In this example, the $dumpvars task shall dump all variables in the module
//         top and in all module instances below module top in the hierarchy.

// ! TYPE: POSITIVE

module top;

  initial begin
    $dumpvars(0, top);
  end
endmodule
