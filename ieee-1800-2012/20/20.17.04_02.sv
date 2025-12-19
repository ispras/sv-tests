// IEEE Std 1800-2012
//   20. Utility system tasks and system functions
//    20.17 Programmable logic array modeling system tasks
//     20.17.4 Logic array personality formats

// ! TYPE: POSITIVE

module top(a1, a2, a3, a4, a5, a6, a7, b1, b2, b3, clk);
  input a1, a2, a3, a4, a5, a6, a7, clk;
  output b1, b2, b3;
  logic [1:7] mem[1:3]; // memory declaration for array personality
  logic b1, b2, b3;

  initial begin
    // set up the personality from the file 'array.dat'
    $readmemb("array.dat", mem);
    // set up an asynchronous 'logic' array with the 'input'
    // and 'output' terms expressed as concatenations
    forever @(posedge clk)
      $async$and$array(mem, {a1, a2, a3, a4, a5, a6, a7}, {b1, b2, b3});
  end
endmodule
