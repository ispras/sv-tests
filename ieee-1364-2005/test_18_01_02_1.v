// IEEE Std 1364-2005
//   18. Value change dump (VCD) files
//     18.1 Creating four-state VCD file
//       18.1.2 Specifying variables to be dumped ($dumpvars)
//         Example 1 - Because the first argument is a 1, this invocation dumps all variables
//         within the module top; it does not dump variables in any of the modules instantiated
//         by module top.

// ! TYPE: POSITIVE

module top;

  initial begin
    $dumpvars(1, top);
  end
endmodule
