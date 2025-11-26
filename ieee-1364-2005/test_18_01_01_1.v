// IEEE Std 1364-2005
//   18. Value change dump (VCD) files
//     18.1 Creating four-state VCD file
//       18.1.1 Specifying name of dump file ($dumpfile)

// ! TYPE: POSITIVE

module test;

  initial $dumpfile("module1.dump");
endmodule
